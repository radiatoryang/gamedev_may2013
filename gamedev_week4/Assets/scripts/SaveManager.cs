using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SaveManager : MonoBehaviour {

    public Transform cube1;
    public Transform cube2;
    public Transform cube3;

    public Vector3 cube1savePos;
    public Vector3 cube2savePos;
    public Vector3 cube3savePos;
	
	// Update is called once per frame
	void Update () {
        if ( Input.GetKeyDown( KeyCode.S ) ) {
            SaveGame();
        }

        if ( Input.GetKeyDown( KeyCode.L ) ) {
            LoadGame();
        }
	}

    void SaveGame() { // this is tedious
        cube1savePos = cube1.position;
        cube2savePos = cube2.position;
        cube3savePos = cube3.position;
    }

    void LoadGame() { // this is tedious
        cube1.position = cube1savePos;
        cube2.position = cube2savePos;
        cube3.position = cube3savePos;
    }
}
