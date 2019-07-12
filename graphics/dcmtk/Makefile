# $OpenBSD: Makefile,v 1.26 2019/07/12 20:46:57 sthen Exp $

COMMENT=		DICOM toolkit

V =			3.6.3
DISTNAME=		dcmtk-$V
REVISION=		0

SHARED_LIBS +=  charls                    0.0 # 3.6
SHARED_LIBS +=  cmr                       0.0 # 3.6
SHARED_LIBS +=  dcmdata                   0.0 # 3.6
SHARED_LIBS +=  dcmdsig                   0.0 # 3.6
SHARED_LIBS +=  dcmfg                     0.0 # 3.6
SHARED_LIBS +=  dcmimage                  0.0 # 3.6
SHARED_LIBS +=  dcmimgle                  0.0 # 3.6
SHARED_LIBS +=  dcmiod                    0.0 # 3.6
SHARED_LIBS +=  dcmjpeg                   0.0 # 3.6
SHARED_LIBS +=  dcmjpls                   0.0 # 3.6
SHARED_LIBS +=  dcmnet                    0.0 # 3.6
SHARED_LIBS +=  dcmpmap                   0.0 # 3.6
SHARED_LIBS +=  dcmpstat                  0.0 # 3.6
SHARED_LIBS +=  dcmqrdb                   0.0 # 3.6
SHARED_LIBS +=  dcmrt                     0.0 # 3.6
SHARED_LIBS +=  dcmseg                    0.0 # 3.6
SHARED_LIBS +=  dcmsr                     0.0 # 3.6
SHARED_LIBS +=  dcmtls                    0.0 # 3.6
SHARED_LIBS +=  dcmtract                  0.0 # 3.6
SHARED_LIBS +=  dcmwlm                    0.0 # 3.6
SHARED_LIBS +=  i2d                       0.0 # 3.6
SHARED_LIBS +=  ijg12                     0.0 # 3.6
SHARED_LIBS +=  ijg16                     0.0 # 3.6
SHARED_LIBS +=  ijg8                      0.0 # 3.6
SHARED_LIBS +=  oflog                     0.0 # 3.6
SHARED_LIBS +=  ofstd                     0.0 # 3.6

CATEGORIES=		graphics

HOMEPAGE=		http://www.dcmtk.org/dcmtk.php.en

MASTER_SITES=		ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/dcmtk${V:S/.//g}/

# Several ISC and BSDish
# ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/dcmtk363/COPYRIGHT
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto jpeg m png pthread ssl ${COMPILER_LIBCXX} tiff
WANTLIB += xml2 z charset iconv

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		converters/libiconv \
			graphics/jpeg \
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

NO_TEST=		Yes

.include <bsd.port.mk>
