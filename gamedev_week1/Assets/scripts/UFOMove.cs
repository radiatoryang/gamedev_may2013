using UnityEngine;
using System.Collections;

public class UFOMove : MonoBehaviour { // all GameObject scripts in Unity must inherit from MonoBehaviour
	
	public float moveSpeed = 5f;
	float thisIsPrivate = -1f; // by default, all variables are private

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        // EVERY FRAME: if the player holds down the Right Arrow, then Translate
        if ( Input.GetKey( KeyCode.D ) ) {
            transform.Translate( moveSpeed * Time.deltaTime, 0f, 0f );
        }

        if ( Input.GetKey( KeyCode.A ) ) {
            transform.Translate( -moveSpeed * Time.deltaTime, 0f, 0f );
        }

        if ( Input.GetKey( KeyCode.W ) ) {
            transform.Translate( 0f, 0f, moveSpeed * Time.deltaTime);
        }

        if ( Input.GetKey( KeyCode.S ) ) {
            transform.Translate( 0f, 0f, -moveSpeed * Time.deltaTime );
        }

        // Input.GetKeyDown() will return TRUE only on the FIRST frame that the key is pressed down, and never again until the key is released
        // Input.GetKeyUp() will return TRUE only on the FIRST frame that the key is released, and never again until the key is pressed down
	}
}
