using UnityEngine;
using System.Collections;

public class Fish : MonoBehaviour {

    Vector3 destination;

	// Use this for initialization
	void Start () {
        SetNewDestination();
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        // go towards the Vector3 "destination"
        rigidbody.AddForce( (destination - transform.position).normalized, ForceMode.VelocityChange );

        if ( Vector3.Distance( destination, transform.position ) < 10f ) {
            SetNewDestination();
        }
	}

    public void SetNewDestination() {
        SetNewDestination( 20f );
    }

    public void SetNewDestination( float range ) {
        SetNewDestination( Random.insideUnitSphere * range );
    }

    public void SetNewDestination( Vector3 newDestination ) {
        destination = newDestination;
    }
}
