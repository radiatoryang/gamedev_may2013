using UnityEngine;
using System.Collections;

public class TriggerLight : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    // called when something enters the trigger
    // the triggering thing OR the trigger itself must have a Rigidbody
    void OnTriggerEnter(Collider other) {
        if (other.tag == "Ball") {
            light.enabled = !light.enabled;
        }
    }

    // called when something exits the trigger
    // the triggering thing OR the trigger itself must have a Rigidbody
    void OnTriggerExit() {

    }
}
