using UnityEngine;
using System.Collections;
using System.Collections.Generic; // this "using... " line lets us use List<> structures

public class FishGod : MonoBehaviour {

    List<Fish> fishList = new List<Fish>();
    public Fish blueprint; // assign in inspector
    int fishCount = 200; // how many fish to spawn

	// Use this for initialization
	void Start () {
        for ( int i = 0; i < fishCount; i++ ) { // start a counter at 0; as long as counter is less than "fishCount", keep doing [this] stuff and then advance the counter by 1 and repeat
            Fish newFish = Instantiate( blueprint ) as Fish; // save a reference to our newly spawned fish...
            fishList.Add( newFish );                         // ... so we can add that reference to the list
        }
	}
	
	// Update is called once per frame
	void Update () {
        if ( Input.GetKey( KeyCode.Space ) ) {
            foreach ( Fish fish in fishList ) { // for each "Fish" type variable in "fishList", do [this] to them
                fish.SetNewDestination( new Vector3( 0f, 0f, 0f ) ); // tells all fish to converge to 0, 0, 0
            }
        }
	}
}
