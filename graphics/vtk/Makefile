DPB_PROPERTIES =	parallel

COMMENT =		visualization toolkit

V =			9.4.1
DISTNAME =		VTK-${V}
PKGNAME =		${DISTNAME:L}
REVISION =		1

.for LIB in vtkChartsCore vtkCommonColor vtkCommonComputationalGeometry \
        vtkCommonCore vtkCommonDataModel vtkCommonExecutionModel \
        vtkCommonMath vtkCommonMisc vtkCommonPython vtkCommonSystem \
        vtkCommonTransforms vtkDICOMParser vtkDomainsChemistry \
        vtkDomainsChemistryOpenGL2 vtkFiltersAMR vtkFiltersCellGrid \
        vtkFiltersCore vtkFiltersExtraction vtkFiltersFlowPaths \
        vtkFiltersGeneral vtkFiltersGeneric vtkFiltersGeometry \
        vtkFiltersGeometryPreview vtkFiltersHybrid vtkFiltersHyperTree \
        vtkFiltersImaging vtkFiltersModeling vtkFiltersParallel \
        vtkFiltersParallelDIY2 vtkFiltersParallelImaging vtkFiltersPoints \
        vtkFiltersProgrammable vtkFiltersPython vtkFiltersReduction \
        vtkFiltersSMP vtkFiltersSelection vtkFiltersSources \
        vtkFiltersStatistics vtkFiltersTemporal vtkFiltersTensor \
        vtkFiltersTexture vtkFiltersTopology vtkFiltersVerdict \
        vtkGeovisCore vtkIOAMR vtkIOAsynchronous vtkIOCGNSReader \
        vtkIOCONVERGECFD vtkIOCellGrid vtkIOCesium3DTiles vtkIOChemistry \
        vtkIOCityGML vtkIOCore vtkIOERF vtkIOEnSight vtkIOEngys \
        vtkIOExodus vtkIOExport vtkIOExportGL2PS vtkIOExportPDF \
        vtkIOFDS vtkIOFLUENTCFF vtkIOGeometry vtkIOHDF vtkIOIOSS \
        vtkIOImage vtkIOImport vtkIOInfovis vtkIOLSDyna vtkIOLegacy \
        vtkIOMINC vtkIOMotionFX vtkIOMovie vtkIONetCDF vtkIOOggTheora \
        vtkIOPLY vtkIOParallel vtkIOParallelExodus vtkIOParallelXML \
        vtkIOSQL vtkIOSegY vtkIOTecplotTable vtkIOVeraOut vtkIOVideo \
        vtkIOXML vtkIOXMLParser vtkImagingColor vtkImagingCore \
        vtkImagingFourier vtkImagingGeneral vtkImagingHybrid \
        vtkImagingMath vtkImagingMorphological vtkImagingSources \
        vtkImagingStatistics vtkImagingStencil vtkInfovisCore \
        vtkInfovisLayout vtkInteractionImage vtkInteractionStyle \
        vtkInteractionWidgets vtkParallelCore vtkParallelDIY \
        vtkPythonContext2D vtkPythonInterpreter vtkRenderingAnnotation \
        vtkRenderingCellGrid vtkRenderingContext2D \
        vtkRenderingContextOpenGL2 vtkRenderingCore vtkRenderingFreeType \
        vtkRenderingGL2PSOpenGL2 vtkRenderingHyperTreeGrid \
        vtkRenderingImage vtkRenderingLICOpenGL2 vtkRenderingLOD \
        vtkRenderingLabel vtkRenderingOpenGL2 vtkRenderingParallel \
        vtkRenderingSceneGraph vtkRenderingUI vtkRenderingVRModels \
        vtkRenderingVolume vtkRenderingVolumeOpenGL2 vtkRenderingVtkJS \
        vtkTestingCore vtkTestingDataModel vtkTestingGenericBridge \
        vtkTestingIOSQL vtkTestingRendering vtkViewsContext2D \
        vtkViewsCore vtkViewsInfovis vtkWrappingPythonCore3.12 \
        vtkWrappingTools vtkexodusII vtkglad vtkioss vtkkissfft \
        vtkmetaio vtksys vtktoken
SHARED_LIBS += ${LIB} 0.0 # 0.0
.endfor

CATEGORIES =		graphics
HOMEPAGE =		https://vtk.org/
MAINTAINER =		Johannes Thyssen Tishman <jtt@openbsd.org>

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcursor Xfixes Xrender c cgns
WANTLIB += double-conversion execinfo expat fmt freetype gl2ps
WANTLIB += hdf5 hdf5_hl hpdf intl jpeg jsoncpp lz4 lzma m netcdf
WANTLIB += ogg png proj pugixml python3.12 sqlite3 theora theoradec
WANTLIB += theoraenc tiff util verdict xml2 z

SITES =			https://www.vtk.org/files/release/${V:R}/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			VTKData-${V}${EXTRACT_SUFX}

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/cli11 \
			devel/utfcpp \
			math/eigen3 \
			math/exprtk \
			textproc/nlohmann-json

LIB_DEPENDS =		archivers/lz4 \
			archivers/xz \
			audio/libogg \
			databases/sqlite3 \
			devel/fmt \
			devel/gettext,-runtime \
			devel/jsoncpp \
			devel/proj \
			graphics/jpeg \
			graphics/png \
			graphics/tiff \
			math/cgns \
			math/double-conversion \
			math/hdf5 \
			math/netcdf \
			math/verdict \
			multimedia/libtheora \
			print/gl2ps \
			print/libharu \
			textproc/libxml \
			textproc/pugixml

# See https://docs.vtk.org/en/latest/build_instructions/build_settings.html
# fast float: older version required (3.9.0)
# pegtl: easy to port but https://gitlab.kitware.com/vtk/vtk/-/issues/18151
# ioss: part of seacas suite and difficult to package
# token: a vtk utility
CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DVTK_FORBID_DOWNLOADS=ON \
			-DVTK_LEGACY_REMOVE=ON \
			-DVTK_VERSIONED_INSTALL=OFF \
			-DVTK_BUILD_DOCUMENTATION=OFF \
			-DVTK_BUILD_TESTING=WANT \
			-DVTK_BUILD_ALL_MODULES=OFF \
			-DVTK_ENABLE_LOGGING=OFF \
			-DVTK_ENABLE_REMOTE_MODULES=OFF \
			-DVTK_ENABLE_WRAPPING=ON \
			-DVTK_WRAP_PYTHON=ON \
			-DVTK_WRAP_JAVA=OFF \
			-DVTK_USE_CUDA=OFF \
			-DVTK_USE_MPI=OFF \
			-DVTK_USE_TK=OFF \
			-DVTK_USE_EXTERNAL=ON \
			-DVTK_MODULE_USE_EXTERNAL_VTK_fast_float=OFF \
			-DVTK_MODULE_USE_EXTERNAL_VTK_pegtl=OFF \
			-DVTK_MODULE_USE_EXTERNAL_VTK_ioss=OFF \
			-DVTK_MODULE_USE_EXTERNAL_VTK_token=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

CXXFLAGS +=		-I${X11BASE}/include \
			-L${LOCALBASE}/lib

# Some tests require an active X11 display to work. When using
# PORTS_PRIVSEP=Yes, the following can be used:
# xhost +si:localuser:_pbuild; make test; xhost -si:localuser:_pbuild
TEST_IS_INTERACTIVE =	X11

post-install:
	${MODPY_COMPILEALL} ${WRKINST}${MODPY_SITEPKG}

.include <bsd.port.mk>
