using UnityEngine;
using System.Collections;

public class CharacterMotor : MonoBehaviour {

    public float speed = 5f;
    public float turnRate = 5f;
    CharacterController controller;

	// Use this for initialization
	void Start () {
        controller = GetComponent<CharacterController>();
	}
	
	// Update is called once per frame
	void Update () {
        // grab virtual joystick (from -1 to 1) and apply forward motion
        if ( Mathf.Abs( Input.GetAxis( "Vertical" ) ) > 0.1f ) {
            controller.SimpleMove( transform.forward * speed * Input.GetAxis( "Vertical" ) );
        //    rigidbody.AddForce( transform.forward * speed * Input.GetAxis( "Vertical" ), ForceMode.VelocityChange );
        }

        // grab virtual joystick number (from -1 to 1) and apply appropriate left/right rotation
        if ( Mathf.Abs( Input.GetAxis( "Horizontal" ) ) > 0.1f ) {
            transform.Rotate( 0f, Input.GetAxis( "Horizontal" ) * turnRate, 0f );
        }
	}
}
