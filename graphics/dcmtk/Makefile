COMMENT=		DICOM toolkit

# orthanc needs to handle the dcmtk version; look for DCMTK_STATIC_VERSION,
# DCMTK_VERSION_NUMBER, /usr/local/share/dcmtk-3.7.x, e.g. in
# ../OrthancFramework/Resources/CMake/DcmtkConfiguration.cmake
V =			3.7.1
REVISION =		0
DISTNAME=		dcmtk-$V

.for l in cmr dcmdata dcmdsig dcmfg dcmimage dcmimgle dcmiod dcmjpeg \
	dcmjpls dcmnet dcmpmap dcmpstat dcmqrdb dcmrt dcmseg dcmsr \
	dcmtls dcmtract dcmwlm dcmxml i2d ijg12 ijg16 ijg8 oficonv \
	oflog ofstd dcmect dcmtkcharls
SHARED_LIBS +=  $l 4.0
.endfor

CATEGORIES=		graphics

HOMEPAGE=		https://www.dcmtk.org/dcmtk.php.en

SITES=	https://dicom.offis.de/download/dcmtk/dcmtk${V:S/.//g}/

# Several ISC and BSDish
# https://dicom.offis.de/download/dcmtk/dcmtk369/COPYRIGHT
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto jpeg m png ssl tiff xml2 z

COMPILER =		base-clang ports-gcc

LIB_DEPENDS=		graphics/jpeg \
			graphics/png \
			graphics/tiff \
			textproc/libxml

RUN_DEPENDS=		graphics/netpbm

MODULES =		devel/cmake

SUBST_VARS +=		V

CONFIGURE_ARGS +=	-DDCMTK_WITH_ICU=OFF \
			-DDCMTK_WITH_WRAP=OFF \
			-DDCMTK_WITH_THREADS=OFF \
			-DBUILD_SHARED_LIBS=On \
			-DDCMTK_INSTALL_MANDIR=man \
			-DCMAKE_INSTALL_SYSCONFDIR=share/examples \
			-DDCMTK_ENABLE_CXX11:BOOL=ON

.include <bsd.port.mk>
