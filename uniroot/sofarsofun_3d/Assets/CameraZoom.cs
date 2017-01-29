using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraZoom : MonoBehaviour {
    float zoomSize = 5;
	// Use this for initialization
	void Start () {

		
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetAxis ("Mouse ScrollWheel") > 0)
         {
            if (zoomSize > 3)
                zoomSize -= 1;
          }
        if (Input.GetAxis("Mouse ScrollWheel") < 0)
        {
            if (zoomSize < 7)
                zoomSize += 1;

        }
    
        GetComponent<Camera>().orthographicSize = zoomSize;
        }
}
