$OpenBSD: patch-autotest_conftest.py,v 1.1 2018/12/28 08:53:59 landry Exp $

iter_markers() requires pytest >= 3.6 ?
https://github.com/OSGeo/gdal/issues/1165

--- autotest/conftest.py.orig	Wed Dec 26 21:12:53 2018
+++ autotest/conftest.py	Wed Dec 26 21:13:01 2018
@@ -53,6 +53,7 @@
     # skip tests with @pytest.mark.require_driver(name) when the driver isn't available
     skip = pytest.mark.skip("Driver not present")
     import gdaltest
+    return
 
     drivers_checked = {}
     for item in items:
