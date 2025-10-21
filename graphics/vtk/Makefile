BROKEN-riscv64 =	graphics/vtk and cad/freecad considered too heavy for riscv64

DPB_PROPERTIES =	parallel

COMMENT =		visualization toolkit

V =			9.5.2
DISTNAME =		VTK-${V}
PKGNAME =		${DISTNAME:L}
REVISION =		0

.for LIB in vtkChartsCore vtkCommonColor vtkCommonComputationalGeometry \
	vtkCommonCore vtkCommonDataModel vtkCommonExecutionModel vtkCommonMath \
	vtkCommonMisc vtkCommonSystem vtkCommonTransforms vtkDICOMParser \
	vtkDomainsChemistry vtkDomainsChemistryOpenGL2 vtkFiltersAMR \
	vtkFiltersCellGrid vtkFiltersCore vtkFiltersExtraction \
	vtkFiltersFlowPaths vtkFiltersGeneral vtkFiltersGeneric \
	vtkFiltersGeometry vtkFiltersGeometryPreview vtkFiltersHybrid \
	vtkFiltersHyperTree vtkFiltersImaging vtkFiltersModeling \
	vtkFiltersParallel vtkFiltersParallelImaging vtkFiltersPoints \
	vtkFiltersProgrammable vtkFiltersReduction vtkFiltersSMP \
	vtkFiltersSelection vtkFiltersSources vtkFiltersStatistics \
	vtkFiltersTemporal vtkFiltersTensor vtkFiltersTexture \
	vtkFiltersTopology vtkFiltersVerdict vtkGeovisCore vtkIOAMR \
	vtkIOAsynchronous vtkIOCGNSReader vtkIOCONVERGECFD vtkIOCellGrid \
	vtkIOCesium3DTiles vtkIOChemistry vtkIOCityGML vtkIOCore vtkIOERF \
	vtkIOEnSight vtkIOEngys vtkIOExodus vtkIOExport vtkIOExportGL2PS \
	vtkIOExportPDF vtkIOFDS vtkIOFLUENTCFF vtkIOGeometry vtkIOHDF vtkIOIOSS \
	vtkIOImage vtkIOImport vtkIOInfovis vtkIOLANLX3D vtkIOLSDyna \
	vtkIOLegacy vtkIOMINC vtkIOMotionFX vtkIOMovie vtkIONetCDF \
	vtkIOOggTheora vtkIOPLY vtkIOParallel vtkIOParallelXML vtkIOSQL \
	vtkIOSegY vtkIOTecplotTable vtkIOVeraOut vtkIOVideo vtkIOXML \
	vtkIOXMLParser vtkImagingColor vtkImagingCore vtkImagingFourier \
	vtkImagingGeneral vtkImagingHybrid vtkImagingMath \
	vtkImagingMorphological vtkImagingSources vtkImagingStatistics \
	vtkImagingStencil vtkInfovisCore vtkInfovisLayout vtkInteractionImage \
	vtkInteractionStyle vtkInteractionWidgets vtkParallelCore \
	vtkParallelDIY vtkRenderingAnnotation vtkRenderingCellGrid \
	vtkRenderingContext2D vtkRenderingContextOpenGL2 vtkRenderingCore \
	vtkRenderingFreeType vtkRenderingGL2PSOpenGL2 vtkRenderingGridAxes \
	vtkRenderingHyperTreeGrid vtkRenderingImage vtkRenderingLICOpenGL2 \
	vtkRenderingLOD vtkRenderingLabel vtkRenderingOpenGL2 \
	vtkRenderingSceneGraph vtkRenderingUI vtkRenderingVolume \
	vtkRenderingVolumeOpenGL2 vtkRenderingVtkJS vtkTestingCore \
	vtkTestingRendering vtkViewsContext2D vtkViewsCore vtkViewsInfovis \
	vtkexodusII vtkfmt vtkglad vtkioss vtkkissfft vtkmetaio vtksys vtktoken
SHARED_LIBS += ${LIB} 3.0 # 0.0
.endfor

CATEGORIES =		graphics
HOMEPAGE =		https://vtk.org/
MAINTAINER =		Johannes Thyssen Tishman <jtt@openbsd.org>

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcursor Xfixes Xrender c cgns
WANTLIB += double-conversion execinfo expat freetype gl2ps hdf5
WANTLIB += hdf5_hl hpdf jpeg jsoncpp lz4 lzma m netcdf ogg png
WANTLIB += proj pugixml sqlite3 theora theoradec theoraenc tiff
WANTLIB += verdict xml2 z

SITES =			https://www.vtk.org/files/release/${V:R}/

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/cli11 \
			devel/utfcpp \
			math/eigen3 \
			math/exprtk \
			textproc/nlohmann-json

LIB_DEPENDS =		archivers/lz4 \
			archivers/xz \
			audio/libogg \
			databases/sqlite3 \
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
# fmt: newer version required (>=11.0.0)
CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DVTK_FORBID_DOWNLOADS=ON \
			-DVTK_LEGACY_REMOVE=ON \
			-DVTK_VERSIONED_INSTALL=OFF \
			-DVTK_BUILD_DOCUMENTATION=OFF \
			-DVTK_BUILD_TESTING=OFF \
			-DVTK_BUILD_ALL_MODULES=OFF \
			-DVTK_ENABLE_LOGGING=OFF \
			-DVTK_ENABLE_REMOTE_MODULES=OFF \
			-DVTK_ENABLE_WRAPPING=OFF \
			-DVTK_WRAP_PYTHON=OFF \
			-DVTK_WRAP_JAVA=OFF \
			-DVTK_USE_CUDA=OFF \
			-DVTK_USE_MPI=OFF \
			-DVTK_USE_TK=OFF \
			-DVTK_USE_EXTERNAL=ON \
			-DVTK_MODULE_USE_EXTERNAL_VTK_fast_float=OFF \
			-DVTK_MODULE_USE_EXTERNAL_VTK_pegtl=OFF \
			-DVTK_MODULE_USE_EXTERNAL_VTK_ioss=OFF \
			-DVTK_MODULE_USE_EXTERNAL_VTK_token=OFF \
			-DVTK_MODULE_USE_EXTERNAL_VTK_fmt=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

CXXFLAGS +=		-I${X11BASE}/include
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

.include <bsd.port.mk>
