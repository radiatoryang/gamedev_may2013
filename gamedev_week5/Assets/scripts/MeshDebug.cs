using UnityEngine;
using System.Collections;

public class MeshDebug : MonoBehaviour {

    MeshFilter meshFilter;

    public Vector3[] baseVertices; // copy of the mesh vertices; don't touch this
    public Vector3[] myVerticesCopy; // copy of mesh vertices that I will deform

    float[] randomSeeds;

	// Use this for initialization
	void Start () {
        meshFilter = GetComponent<MeshFilter>();

        baseVertices = meshFilter.mesh.vertices;
        myVerticesCopy = meshFilter.mesh.vertices;

        // reserving room for random numbers in the array
        randomSeeds = new float[baseVertices.Length];
        // fill each array item with a random number
        for ( int i = 0; i < randomSeeds.Length; i++ ) {
            randomSeeds[i] = Random.Range( 0f, 5f );
        }

	}

    // Update is called once per frame
    void Update() {
        // DON'T DO THIS
        // meshFilter.mesh.vertices[0] += Vector3.up;

        // INSTEAD, DO THIS:
        // myVerticesCopy[0] += Vector3.up * Time.deltaTime;
        // meshFilter.mesh.vertices = myVerticesCopy;

        // Using a for() loop to change all vertices at once
        for ( int i = 0; i < myVerticesCopy.Length; i++ ) {
            myVerticesCopy[i] = baseVertices[i] + Vector3.up * Mathf.Sin( Time.time * randomSeeds[i] ) * 0.1f;
        }
        meshFilter.mesh.vertices = myVerticesCopy;

        meshFilter.mesh.RecalculateNormals();

        // Visualize vertices and their normals
        for ( int i = 0; i < meshFilter.mesh.vertices.Length; i++ ) {
            Debug.DrawRay( meshFilter.mesh.vertices[i], meshFilter.mesh.normals[i] );
        }
	}
}
