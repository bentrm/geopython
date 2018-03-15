# GeoPython

Simple image based on the official Python Alpine image. Offers an easy starting
point to develop GeoDjango applications with the help of the docker ecosystem,
for example.

Comes with the following tools:

- `gettext` to allow the usage of the Django localization features

And the following spatial libraries:

- `Proj4`
- `GEOS`
- `GDAL`
- `Spatialite`

Add this to your Django `settings.py` to make the framework aware of the spatial
libraries that come preinstalled:

```
SPATIALITE_LIBRARY_PATH = "/usr/lib/mod_spatialite.so.7"
GEOS_LIBRARY_PATH = "/usr/lib/libgeos_c.so.1"
GDAL_LIBRARY_PATH = "/usr/lib/libgdal.so.20"
```

If you don't need a full fledged database or just want to start out prototyping
you can use the following to configure Spatialite as your persistence backend:

```
DATABASES = {
    "default": {
        "ENGINE": "django.contrib.gis.db.backends.spatialite",
        "NAME": os.path.join(BASE_DIR, "db.sqlite3"),
    }
}
```
