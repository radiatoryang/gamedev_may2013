using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SaveManager3 : MonoBehaviour {

    public Dictionary<GameObject, Vector3> objectPositions = new Dictionary<GameObject, Vector3>();
	
	// Update is called once per frame
	void Update () {
        DetectCubes(); // call every frame!

         if ( Input.GetKeyDown( KeyCode.S ) ) {
            SaveGame();
        }

        if ( Input.GetKeyDown( KeyCode.L ) ) {
            LoadGame();
        }
	}

    void DetectCubes() { // is called every frame
        List<GameObject> possiblyNewCubes = new List<GameObject>( GameObject.FindGameObjectsWithTag( "Cube" ) );

        // go through the list of possiblyNewCubes and see if it's already in our dictionary
        foreach ( GameObject possibleCube in possiblyNewCubes ) {
            if ( objectPositions.ContainsKey( possibleCube ) == false ) {
                objectPositions.Add( possibleCube, possibleCube.transform.position ); // .Add() for dictionaries takes 2 parameters!
            }
        }
    }

    void SaveGame() {
        List<GameObject> newObjectsToSave = new List<GameObject>();

        foreach ( KeyValuePair<GameObject, Vector3> keyPair in objectPositions ) {
        //  we can't change Vector3 Values directly, because that'd be editing it WHILE we read it
        //    keyPair.Value = keyPair.Key.transform.position;
        //    objectPositions[keyPair.Key] = keyPair.Key.transform.position;
        // ... so instead of the above code, we have to put our modifications in a separate list, and apply the changes in a separate foreach() loop
            newObjectsToSave.Add( keyPair.Key );
        }

        foreach ( GameObject gameObj in newObjectsToSave ) {
            objectPositions[gameObj] = gameObj.transform.position;
        }
    }

    void LoadGame() {
        foreach ( KeyValuePair<GameObject, Vector3> keyPair in objectPositions ) {
            keyPair.Key.transform.position = objectPositions[keyPair.Key];
        }
    }
}
