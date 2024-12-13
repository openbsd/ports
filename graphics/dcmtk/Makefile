COMMENT=		DICOM toolkit

V =			3.6.9
DISTNAME=		dcmtk-$V

SHARED_LIBS +=  cmr                       1.0 # 3.6
SHARED_LIBS +=  dcmdata                   2.0 # 3.6
SHARED_LIBS +=  dcmdsig                   1.0 # 3.6
SHARED_LIBS +=  dcmfg                     2.0 # 3.6
SHARED_LIBS +=  dcmimage                  1.0 # 3.6
SHARED_LIBS +=  dcmimgle                  2.0 # 3.6
SHARED_LIBS +=  dcmiod                    2.0 # 3.6
SHARED_LIBS +=  dcmjpeg                   2.0 # 3.6
SHARED_LIBS +=  dcmjpls                   1.1 # 3.6
SHARED_LIBS +=  dcmnet                    2.0 # 3.6
SHARED_LIBS +=  dcmpmap                   2.0 # 3.6
SHARED_LIBS +=  dcmpstat                  2.0 # 3.6
SHARED_LIBS +=  dcmqrdb                   2.0 # 3.6
SHARED_LIBS +=  dcmrt                     2.0 # 3.6
SHARED_LIBS +=  dcmseg                    2.0 # 3.6
SHARED_LIBS +=  dcmsr                     2.0 # 3.6
SHARED_LIBS +=  dcmtls                    1.0 # 3.6
SHARED_LIBS +=  dcmtract                  2.0 # 3.6
SHARED_LIBS +=  dcmwlm                    1.0 # 3.6
SHARED_LIBS +=  dcmxml                    0.0 # 0.0
SHARED_LIBS +=  i2d                       2.0 # 3.6
SHARED_LIBS +=  ijg12                     1.0 # 3.6
SHARED_LIBS +=  ijg16                     1.0 # 3.6
SHARED_LIBS +=  ijg8                      1.0 # 3.6
SHARED_LIBS +=  oficonv                   0.0 # 0.0
SHARED_LIBS +=  oflog                     2.0 # 3.6
SHARED_LIBS +=  ofstd                     2.0 # 3.6
SHARED_LIBS +=  dcmect                    2.0 # 3.6
SHARED_LIBS +=  dcmtkcharls               1.0 # 3.6

CATEGORIES=		graphics

HOMEPAGE=		https://www.dcmtk.org/dcmtk.php.en

SITES=	https://dicom.offis.de/download/dcmtk/dcmtk${V:S/.//g}/

# Several ISC and BSDish
# https://dicom.offis.de/download/dcmtk/dcmtk369/COPYRIGHT
PERMIT_PACKAGE=	Yes

SUBST_VARS += V

WANTLIB += c crypto jpeg m png pthread ssl ${COMPILER_LIBCXX} tiff
WANTLIB += xml2 z iconv charset

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		graphics/jpeg \
			graphics/png \
			graphics/tiff \
			textproc/libxml

RUN_DEPENDS=		graphics/netpbm

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DDCMTK_WITH_ICU=OFF \
			-DDCMTK_WITH_WRAP=OFF \
			-DDCMTK_WITH_THREADS=OFF \
			-DBUILD_SHARED_LIBS=On \
			-DDCMTK_INSTALL_MANDIR=man \
			-DCMAKE_INSTALL_SYSCONFDIR=share/examples \
			-DDCMTK_ENABLE_CXX11:BOOL=ON

.include <bsd.port.mk>
