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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.arView.debugOptions = [ARSCNDebugOptions.showFeaturePoints,ARSCNDebugOptions.showWorldOrigin]
        self.arView.session.run(configuration)
        
        let currentScene = SCNScene(named: selectedPlanet.modelFileName!)
        guard let currentModel = currentScene?.rootNode.childNode(withName: selectedPlanet.model!, recursively: true) else {
            fatalError("No model found.")
        }
        //addModel()
        currentModel.position = SCNVector3(x: 0, y: 0, z: 0)
        self.arView.scene.rootNode.addChildNode(currentModel)
        }
        
    func addModel(){
        
        let node = SCNNode()
        node.geometry = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0)
        node.geometry?.firstMaterial?.diffuse.contents = UIColor.cyan
        node.position = SCNVector3(x: 0, y: 0, z: 0)
        self.arView.scene.rootNode.addChildNode(node)
        
        
        
    }

    
}
