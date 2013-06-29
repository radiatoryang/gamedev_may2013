using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SaveManager2 : MonoBehaviour {

    public List<GameObject> objectsToSave = new List<GameObject>();
    public List<Vector3> savePositions = new List<Vector3>();
	
	// Update is called once per frame
	void Update () {
        DetectCubes();

         if ( Input.GetKeyDown( KeyCode.S ) ) {
            SaveGame();
        }

        if ( Input.GetKeyDown( KeyCode.L ) ) {
            LoadGame();
        }
	}

    void DetectCubes() {
        List<GameObject> possiblyNewCubes = new List<GameObject>( GameObject.FindGameObjectsWithTag( "Cube" ) );

        // go through the list of possiblyNewCubes and see if it's already in our list
        foreach ( GameObject possibleCube in possiblyNewCubes ) {
            if ( objectsToSave.Contains( possibleCube ) == false ) {
                objectsToSave.Add( possibleCube );
                savePositions.Add( possibleCube.transform.position );
            }
        }

        // this for() loop does the SAME THING as the foreach() loop above
        //for ( int i = 0; i < possiblyNewCubes.Count; i++ ) {
        //    GameObject possibleCube = possiblyNewCubes[i];
        //    objectsToSave.Add( possibleCube );
        //    savePositions.Add( possibleCube.transform.position );
        //}
    }

    void SaveGame() {
        for ( int i = 0; i < objectsToSave.Count; i++ ) {
            savePositions[i] = objectsToSave[i].transform.position;
        }
    }

    void LoadGame() {
        for ( int i = 0; i < objectsToSave.Count; i++ ) {
            objectsToSave[i].transform.position = savePositions[i];
        }
    }
}
