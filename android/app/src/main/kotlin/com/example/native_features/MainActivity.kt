package com.example.native_features

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.hardware.Sensor
import android.hardware.SensorManager
import android.location.LocationManager
import android.provider.MediaStore
import androidx.core.app.ActivityCompat
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    private val CHANNEL = "com.example.native"

    private val CAMERA_PERMISSION_CODE = 101
    private val LOCATION_PERMISSION_CODE = 102

    override fun configureFlutterEngine(
        flutterEngine: FlutterEngine
    ) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setMethodCallHandler { call, result ->

            when (call.method) {

                "getLocation" -> {
                    val data = getLocation()
                    result.success(data)
                }

                "openCamera" -> {
                    val data = openCamera()
                    result.success(data)
                }

                "getAccelerometer" -> {
                    val data = getAccelerometer()
                    result.success(data)
                }

                "getGyroscope" -> {
                    val data = getGyroscope()
                    result.success(data)
                }

                else -> {
                    result.notImplemented()
                }
            }
        }
    }

   
    private fun getLocation(): String {

        if (ActivityCompat.checkSelfPermission(
                this,
                Manifest.permission.ACCESS_FINE_LOCATION
            ) != PackageManager.PERMISSION_GRANTED &&
            ActivityCompat.checkSelfPermission(
                this,
                Manifest.permission.ACCESS_COARSE_LOCATION
            ) != PackageManager.PERMISSION_GRANTED
        ) {

            ActivityCompat.requestPermissions(
                this,
                arrayOf(
                    Manifest.permission.ACCESS_FINE_LOCATION,
                    Manifest.permission.ACCESS_COARSE_LOCATION
                ),
                LOCATION_PERMISSION_CODE
            )

            return "Location permission requested"
        }

        val locationManager =
            getSystemService(LOCATION_SERVICE) as LocationManager

        val location =
            locationManager.getLastKnownLocation(
                LocationManager.GPS_PROVIDER
            )

        return if (location != null) {

            "Latitude: ${location.latitude}, Longitude: ${location.longitude}"

        } else {

            "Location not available"
        }
    }

   
    private fun openCamera(): String {

        if (ActivityCompat.checkSelfPermission(
                this,
                Manifest.permission.CAMERA
            ) != PackageManager.PERMISSION_GRANTED
        ) {

            ActivityCompat.requestPermissions(
                this,
                arrayOf(Manifest.permission.CAMERA),
                CAMERA_PERMISSION_CODE
            )

            return "Camera permission requested"
        }

        val intent = Intent(
            MediaStore.ACTION_IMAGE_CAPTURE
        )

        startActivity(intent)

        return "Camera opened"
    }

    

    private fun getAccelerometer(): String {

        val sensorManager =
            getSystemService(SENSOR_SERVICE) as SensorManager

        val sensor =
            sensorManager.getDefaultSensor(
                Sensor.TYPE_ACCELEROMETER
            )

        return if (sensor != null) {

            "Accelerometer available"

        } else {

            "Accelerometer not available"
        }
    }

    

    private fun getGyroscope(): String {

        val sensorManager =
            getSystemService(SENSOR_SERVICE) as SensorManager

        val sensor =
            sensorManager.getDefaultSensor(
                Sensor.TYPE_GYROSCOPE
            )

        return if (sensor != null) {

            "Gyroscope available"

        } else {

            "Gyroscope not available"
        }
    }
}