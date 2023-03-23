//
//  PlanetARViewController.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 20/03/23.
//

import UIKit
import ARKit
import RealityKit

class PlanetARViewController: UIViewController {

    @IBOutlet weak var arView: ARSCNView!
    
    let configuration = ARWorldTrackingConfiguration()
    var selectedPlanet: Planet!
    var modelNode: SCNNode!
    var currentAngleY: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerGestureRecognizers()
        //self.arView.debugOptions = [ARSCNDebugOptions.showFeaturePoints,ARSCNDebugOptions.showWorldOrigin]
        self.arView.session.run(configuration)
        self.arView.autoenablesDefaultLighting = true
        let currentScene = SCNScene(named: selectedPlanet.modelFileName!)
        guard let currentModel = currentScene?.rootNode.childNode(withName: selectedPlanet.model!, recursively: true) else {
            fatalError("No model found.")
        }
        modelNode = currentModel
        currentModel.position = SCNVector3(x: 0, y: 0, z: 0.3)
        self.arView.scene.rootNode.addChildNode(currentModel)
        //self.arView.scene = currentScene!
        }
        
    private func registerGestureRecognizers(){
        let pinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(pinched))
        self.arView.addGestureRecognizer(pinchGestureRecognizer)
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panned))
        self.arView.addGestureRecognizer(panGesture)
        
    }

    @objc func pinched(recognizer: UIPinchGestureRecognizer){
        if recognizer.state == .changed{
            guard let arView = recognizer.view as? ARSCNView else{
                return
            }
            let touch = recognizer.location(in: arView)
            let hitTestResults = self.arView.hitTest(touch, options: nil)
            
            if let hitTest = hitTestResults.first {
                
                let modelNode = hitTest.node
                let pinchScaleX = Float(recognizer.scale) * modelNode.scale.x
                let pinchScaleY = Float(recognizer.scale) * modelNode.scale.y
                let pinchScaleZ = Float(recognizer.scale) * modelNode.scale.z
                
                modelNode.scale = SCNVector3(x: pinchScaleX, y: pinchScaleY, z: pinchScaleZ)
                
                recognizer.scale = 1
            }
        }
    }
    
    @objc func panned(_ gesture: UIPanGestureRecognizer){
        guard let nodeToRotate = modelNode else { return }

                let translation = gesture.translation(in: gesture.view!)
                var newAngleY = (Float)(translation.x)*(Float)(Double.pi)/180.0
                newAngleY += currentAngleY

                nodeToRotate.eulerAngles.y = newAngleY

                if(gesture.state == .ended) { currentAngleY = newAngleY }
                    print(nodeToRotate.eulerAngles)
    }
}
