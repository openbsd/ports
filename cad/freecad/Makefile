BROKEN-riscv64 =	graphics/vtk and cad/freecad considered too heavy for riscv64

DPB_PROPERTIES =	parallel parallel2

COMMENT =		general purpose parametric 3D CAD modeler

V =			1.0.2
DISTNAME =		freecad_source
PKGNAME =		freecad-${V}
REVISION =		0

SHARED_LIBS +=		OndselSolver              1.0 # 0.0

CATEGORIES =		cad
HOMEPAGE =		https://www.freecad.org/
MAINTAINER =		Johannes Thyssen Tishman <jtt@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Coin GL GLU Qt6Concurrent Qt6Core
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6OpenGLWidgets Qt6PrintSupport
WANTLIB += Qt6Svg Qt6SvgWidgets Qt6UiTools Qt6Widgets Qt6Xml TKBO
WANTLIB += TKBRep TKBin TKBinL TKBool TKCAF TKCDF TKDE TKDEGLTF
WANTLIB += TKDEIGES TKDESTEP TKDESTL TKFeat TKFillet TKG2d TKG3d
WANTLIB += TKGeomAlgo TKGeomBase TKHLR TKLCAF TKMath TKMesh TKMeshVS
WANTLIB += TKOffset TKPrim TKRWMesh TKService TKShHealing TKTopAlgo
WANTLIB += TKV3d TKVCAF TKXCAF TKXSBase TKernel X11 boost_atomic-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_program_options-mt boost_random-mt boost_regex-mt
WANTLIB += boost_serialization-mt boost_system-mt boost_thread-mt
WANTLIB += c execinfo fmt fontconfig freetype hdf5 hdf5_hl m medC
WANTLIB += pcl_common pcl_features pcl_filters pcl_kdtree pcl_ml
WANTLIB += pcl_octree pcl_sample_consensus pcl_search pcl_segmentation
WANTLIB += pcl_surface pyside6.abi3 python3.12 shiboken6.abi3
WANTLIB += vtkCommonCore vtkCommonDataModel vtkCommonExecutionModel
WANTLIB += vtkCommonMath vtkCommonMisc vtkCommonTransforms
WANTLIB += vtkFiltersCellGrid vtkFiltersCore vtkFiltersExtraction
WANTLIB += vtkFiltersGeneral vtkFiltersGeometry vtkFiltersSources
WANTLIB += vtkFiltersVerdict vtkIOCellGrid vtkIOCore vtkIOImage
WANTLIB += vtkIOLegacy vtkIOXML vtkIOXMLParser vtkImagingCore vtkInteractionStyle
WANTLIB += vtkRenderingCore vtkRenderingFreeType vtkRenderingHyperTreeGrid
WANTLIB += vtkRenderingOpenGL2 vtkRenderingUI vtkglad vtkkissfft
WANTLIB += vtksys vtktoken xerces-c yaml-cpp z

SITES =			https://github.com/FreeCAD/FreeCAD/releases/download/${V}/

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			lang/python \
			x11/qt6

# There are a few dependencies listed at configure time that are not required
# by FreeCAD but that are picked up by the Find*.cmake modules of some of its
# dependencies like vtk or pcl, e.g., flann, qhull, libusb1, utf8cpp, glslang,
# shaderc or exprtk. Do not list these here.
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

RUN_DEPENDS =		cad/netgen-mesher \
			devel/desktop-file-utils \
			devel/py-ply \
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
# PyCXX: modified by FreeCAD (no switch needed)
#	https://github.com/FreeCAD/FreeCAD/commit/a16eec8
# orocos-kdl: modified by FreeCAD
#	https://github.com/FreeCAD/FreeCAD/blob/main/src/Mod/Robot/App/CMakeLists.txt#L77
CONFIGURE_ARGS +=	-DFREECAD_USE_EXTERNAL_FMT=ON \
			-DFREECAD_USE_EXTERNAL_PIVY=ON \
			-DFREECAD_USE_EXTERNAL_KDL=OFF \
			-DFREECAD_USE_EXTERNAL_ZIPIOS=OFF \
			-DFREECAD_USE_EXTERNAL_SMESH=OFF \
			-DFREECAD_USE_EXTERNAL_ONDSELSOLVER=OFF \
			-DFREECAD_USE_PYBIND11=ON \
			-DFREECAD_USE_PCL=ON \
			-DFREECAD_USE_CCACHE=OFF \
			-DFREECAD_USE_OCC_VARIANT="Official Version" \
			-DFREECAD_QT_VERSION=6 \
			-DINSTALL_TO_SITEPACKAGES=ON \
			-DBUILD_FEM_NETGEN=ON \
			-DBUILD_ADDONMGR=OFF \
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

# Some tarballs bundle GSL and GTest, use GSL and GTest from ports:
post-extract:
	rm -r ${WRKSRC}/src/3rdParty/GSL
	rm -r ${WRKSRC}/tests/lib

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

.include <bsd.port.mk>
