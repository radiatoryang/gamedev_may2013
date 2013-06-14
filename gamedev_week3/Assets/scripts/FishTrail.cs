// YOUR HOMEWORK: FIX THIS FILE!
// YOUR HOMEWORK: FIX THIS FILE!
// YOUR HOMEWORK: FIX THIS FILE!

using UnityEngine;
using System.Collections;
// using System.Collections.Generic; // this "using... " line lets us use List<>

// we could technically put this in Fish.cs
// but this script has NOTHING TO DO WITH SWIMMING
// and nothing in Fish.cs needs to know about anything about lines or drawing
// so to make our code simpler and easier to maintain / debug, we put this in a separate script

[RequireComponent (typeof(LineRenderer))] // this line tells the UnityEditor to add a LineRenderer component if it's not already on the gameObject
public class FishTrail : MonoBehaviour {

    List<Vector3> pastPositions = new List<Vector3>(); // keep a list of all previous positions

    LineRenderer lineRenderer; // we could also make this public, and assign the reference from the inspector, OR we can use GetComponent in Start() too.
    public float recordFrequency = 0.2; // how often to log a line point?
    public int maxPointsStored = 50 // how many points to store before deleting older points?

    // Use this for initialization
    void Start() {
        // call RecordPosition() every [recordFrequency] seconds after an initial delay of 0f seconds
        InvokeRepeating( "RecordPosition", 0f, recordFrequency );
    }

    void RecordPosition() {
        if ( pastPositions.Count >= maxPointsStored ) { 	// if the size of pastPositions is more than our max...
            pastPositions.RemoveAt( 0 );	                // ... then remove the first (and oldest) point from the list.
        }

        pastPositions.Add( Transform.position );            // add our current position to our list of past positions

        lineRenderer.SetVertexCount( pastPositions.Count ); 	// we must SetVertexCount because LineRenderer (which is built-in in Unity) uses an immutable array, not a resizable List
        
        for ( int i == 0, i < pastPositions.Count i++ ) { 		// FOR: from an integer starting at 0, as long as it's less than all pastPositions, keep looping and incrementing by 1
            LineRenderer.setPosition( i, pastPositions(i) );	    // SetPosition() is a special method that LineRenderer uses for setting its array (look in the Unity docs)
        }

    }
}
