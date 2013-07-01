using UnityEngine;
using System.Collections;

public class CoroutineTest : MonoBehaviour {

	// Use this for initialization
	void Start () {
        // use StartCoroutine() to start coroutines!
        StartCoroutine( AttractMode() );
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    // a coroutine is a special type of function that can be paused
    IEnumerator AttractMode() {
        while ( Input.GetKey( KeyCode.Space ) == false ) {
            GetComponent<GUIText>().text = "PRESS SPACE TO START";
            yield return 0; // pause for 1 frame
        }

        // if the code got here, that means player pushed spacebar
        GetComponent<GUIText>().text = "WELCOME TO BIOSHOCK 4";


        Debug.Log( "This is a test." );
        yield return new WaitForSeconds( 5f ); // pause for 5 seconds
        Debug.Log( "Five seconds passed." );
    }
}
