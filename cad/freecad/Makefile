BROKEN-riscv64 =	graphics/vtk and cad/freecad considered too heavy for riscv64

DPB_PROPERTIES =	parallel parallel2

COMMENT =		general purpose parametric 3D CAD modeler

V =			1.1.4
DISTNAME =		freecad_source_${V}
PKGNAME =		freecad-${V}
REVISION =		0

SHARED_LIBS +=		OndselSolver              2.0 # 0.0
SHARED_LIBS +=		E57Format                 0.0 # 0.0

CATEGORIES =		cad
HOMEPAGE =		https://www.freecad.org/
MAINTAINER =		Johannes Thyssen Tishman <jtt@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB} Coin GL GLU Qt6Concurrent
WANTLIB += Qt6Core Qt6Gui Qt6Network Qt6OpenGL Qt6OpenGLWidgets
WANTLIB += Qt6PrintSupport Qt6Svg Qt6SvgWidgets Qt6UiTools Qt6Widgets
WANTLIB += Qt6Xml TKBO TKBRep TKBin TKBinL TKBool TKCAF TKCDF
WANTLIB += TKDE TKDEGLTF TKDEIGES TKDESTEP TKDESTL TKExpress TKFeat
WANTLIB += TKFillet TKG2d TKG3d TKGeomAlgo TKGeomBase TKHLR TKLCAF
WANTLIB += TKMath TKMesh TKMeshVS TKOffset TKPrim TKRWMesh TKService
WANTLIB += TKShHealing TKTopAlgo TKV3d TKVCAF TKXCAF TKXSBase
WANTLIB += TKernel boost_atomic-mt boost_chrono-mt boost_container-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_program_options-mt boost_random-mt boost_regex-mt
WANTLIB += boost_serialization-mt boost_thread-mt c execinfo fmt
WANTLIB += freetype hdf5 hdf5_hl icui18n icuuc m med medC pcl_common
WANTLIB += pcl_features pcl_filters pcl_kdtree pcl_ml pcl_octree
WANTLIB += pcl_sample_consensus pcl_search pcl_segmentation pcl_surface
WANTLIB += pyside6.abi3 scn shiboken6.abi3 vtkCommonCore vtkCommonDataModel
WANTLIB += vtkCommonExecutionModel vtkCommonMath vtkCommonMisc
WANTLIB += vtkCommonTransforms vtkFiltersCellGrid vtkFiltersCore
WANTLIB += vtkFiltersExtraction vtkFiltersGeneral vtkFiltersGeometry
WANTLIB += vtkFiltersSources vtkFiltersVerdict vtkIOCellGrid vtkIOCore
WANTLIB += vtkIOImage vtkIOLegacy vtkIOXML vtkIOXMLParser vtkImagingCore
WANTLIB += vtkInteractionStyle vtkRenderingCore vtkRenderingFreeType
WANTLIB += vtkRenderingHyperTreeGrid vtkRenderingLabel vtkRenderingOpenGL2
WANTLIB += vtkRenderingUI vtkglad vtkkissfft vtksys vtktoken vtkx11
WANTLIB += xerces-c yaml-cpp z

SITES =			https://github.com/FreeCAD/FreeCAD/releases/download/${V}/

FIX_CRLF_FILES =	src/Mod/Sketcher/App/GeoEnum.h \
			src/Gui/PythonWrapper.cpp

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			lang/python \
			x11/qt6

BUILD_DEPENDS =		cad/netgen-mesher \
			devel/boost \
			devel/gtest \
			devel/microsoft-gsl \
			devel/py-pybind11 \
			devel/swig \
			graphics/py-matplotlib \
			graphics/py-pivy \
			math/eigen3 \
			textproc/nlohmann-json \
			x11/qt6/pyside6/tools

# There are a few dependencies listed at configure time that are not required
# by FreeCAD but that are picked up by the Find*.cmake modules of some of its
# dependencies like vtk or pcl. List them here just in case.
BUILD_DEPENDS +=	devel/libusb1 \
			devel/utfcpp \
			graphics/glslang \
			graphics/shaderc \
			math/exprtk \
			math/flann \
			math/qhull

RUN_DEPENDS =		cad/netgen-mesher \
			devel/desktop-file-utils \
			devel/py-ply \
			devel/py-typing-extensions \
			graphics/py-matplotlib \
			graphics/py-pivy \
			misc/shared-mime-info \
			textproc/py-yaml \
			x11/gtk+4,-guic

LIB_DEPENDS =		${MODPY_LIB_DEPENDS} \
			cad/opencascade \
			devel/fmt \
			devel/yaml-cpp \
			graphics/coin \
			graphics/pcl \
			graphics/vtk \
			math/hdf5 \
			math/med \
			textproc/xerces-c \
			x11/qt6/pyside6/pyside \
			x11/qt6/pyside6/shiboken \
			x11/qt6/qtsvg

# All options: cMake/FreeCAD_Helpers/InitializeFreeCADBuildOptions.cmake
# Zipios: modified by FreeCAD
#	https://forum.freecad.org/viewtopic.php?p=779490#p779490
# SMESH: part of salome suite and difficult to package
#	https://forum.freecad.org/viewtopic.php?p=715795#p715795
# Onsdel: Constraints solver specifically made for FreeCAD
# orocos-kdl: modified by FreeCAD
#	https://github.com/FreeCAD/FreeCAD/blob/main/src/Mod/Robot/App/CMakeLists.txt#L77
CONFIGURE_ARGS +=	-DFREECAD_USE_EXTERNAL_FMT=ON \
			-DFREECAD_USE_EXTERNAL_PIVY=ON \
			-DFREECAD_USE_EXTERNAL_PYCXX=OFF \
			-DFREECAD_USE_EXTERNAL_GTEST=ON \
			-DFREECAD_USE_EXTERNAL_KDL=OFF \
			-DFREECAD_USE_EXTERNAL_ZIPIOS=OFF \
			-DFREECAD_USE_EXTERNAL_SMESH=OFF \
			-DFREECAD_USE_EXTERNAL_ONDSELSOLVER=OFF \
			-DFREECAD_USE_PYBIND11=ON \
			-DFREECAD_USE_PCL=ON \
			-DFREECAD_USE_CCACHE=OFF \
			-DCCACHE_PROGRAM=OFF \
			-DFREECAD_USE_OCC_VARIANT="Official Version" \
			-DFREECAD_QT_VERSION=6 \
			-DINSTALL_TO_SITEPACKAGES=ON \
			-DBUILD_FEM_NETGEN=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Spnav=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_OpenMP=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON \
			-DCMAKE_INSTALL_DATAROOTDIR=${LOCALBASE}/share \
			-DCMAKE_INSTALL_DATADIR=${LOCALBASE}/share/freecad \
			-DCMAKE_INSTALL_DOCDIR=${LOCALBASE}/share/doc/freecad \
			-DCMAKE_INSTALL_PREFIX=${LOCALBASE}/lib/freecad \
			-DCMAKE_INSTALL_BINDIR=${LOCALBASE}/lib/freecad/bin \
			-DCMAKE_INSTALL_LIBDIR=${LOCALBASE}/lib/freecad/lib \
			-Dpybind11_DIR=${MODPY_SITEPKG}/pybind11/share/cmake/pybind11 \
			-DENABLE_DEVELOPER_TESTS=ON \
			-DBUILD_SHARED_LIBS=ON \
			-Wno-dev

# Some tests require an active X11 display to work. When using
# PORTS_PRIVSEP=Yes, the following can be used:
# xhost +si:localuser:_pbuild; make test; xhost -si:localuser:_pbuild
TEST_IS_INTERACTIVE =	X11

WRKDIST =		${WRKDIR}
PORTHOME =		${WRKDIR}
DEBUG_PACKAGES =	${BUILD_PACKAGES}

# Some tarballs bundle GSL, use GSL from ports.
post-extract:
	rm -r ${WRKSRC}/src/3rdParty/GSL

# To generate src/Build/Version.h file:
# 1. git clone --single-branch -b ${VERSION} https://github.com/FreeCAD/FreeCAD
# 2. git submodule update --init --recursive
# 3. mkdir build && cd build && cmake .. && make fc_version
pre-configure:
	cp ${FILESDIR}/Version.h ${WRKSRC}/src/Build
	${SUBST_CMD} ${WRKSRC}/src/3rdParty/salomesmesh/CMakeLists.txt \
		${WRKSRC}/src/Mod/Part/App/CMakeLists.txt \
		${WRKSRC}/src/Tools/freecad-thumbnailer.in \
		${WRKSRC}/tests/CMakeLists.txt

post-install:
	ln -s ${LOCALBASE}/lib/freecad/bin/FreeCAD ${PREFIX}/bin/FreeCAD
	ln -s ${LOCALBASE}/lib/freecad/bin/FreeCADCmd ${PREFIX}/bin/FreeCADCmd
	ln -s ${LOCALBASE}/lib/freecad/bin/FreeCAD ${PREFIX}/bin/freecad
	ln -s ${LOCALBASE}/lib/freecad/bin/FreeCADCmd ${PREFIX}/bin/freecad-cmd
	${MODPY_COMPILEALL} \
		${WRKINST}${MODPY_SITEPKG}/freecad/ \
		${PREFIX}/lib/freecad/{Mod,Ext}/

	# Remove unnecessary files from E57Format and OndselSolver.
	find ${WRKINST} \( -name 'E57*' -o -name 'OndselSolver*' \) \
		-exec rm -rf {} +

.include <bsd.port.mk>
