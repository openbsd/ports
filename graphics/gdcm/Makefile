# $OpenBSD: Makefile,v 1.19 2020/06/11 19:57:01 jasper Exp $

COMMENT =			cross-platform DICOM implementation

DISTNAME =			gdcm-3.0.6

SHARED_LIBS +=  gdcmCommon                1.0 # 2.8
SHARED_LIBS +=  gdcmDICT                  1.0 # 2.8
SHARED_LIBS +=  gdcmDSED                  1.0 # 2.8
SHARED_LIBS +=  gdcmIOD                   1.0 # 2.8
SHARED_LIBS +=  gdcmMEXD                  1.0 # 2.8
SHARED_LIBS +=  gdcmMSFF                  1.0 # 2.8
SHARED_LIBS +=  gdcmcharls                1.0 # 1.1
SHARED_LIBS +=  gdcmjpeg12                1.0 # 2.8
SHARED_LIBS +=  gdcmjpeg16                1.0 # 2.8
SHARED_LIBS +=  gdcmjpeg8                 1.0 # 2.8
SHARED_LIBS +=  socketxx                  1.0 # 1.2
API_V =				3.0
CATEGORIES =			graphics

HOMEPAGE =			http://gdcm.sourceforge.net/

MAINTAINER =			Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD/Apache2
PERMIT_PACKAGE =		Yes

MASTER_SITES =			${MASTER_SITE_SOURCEFORGE:=gdcm/}

MODULES =			devel/cmake

# c++-14
COMPILER =			base-clang ports-gcc
CXXFLAGS +=			-std=c++14

WANTLIB += ${COMPILER_LIBCXX} c crypto expat json-c m openjp2
WANTLIB += poppler ssl uuid xml2 z

LIB_DEPENDS =			devel/json-c \
				print/poppler \
				sysutils/e2fsprogs \
				textproc/libxml

CONFIGURE_ARGS +=		-DGDCM_BUILD_APPLICATIONS=On \
				-DGDCM_BUILD_SHARED_LIBS=On \
				-DGDCM_BUILD_DOCBOOK_MANPAGES=Off \
				-DGDCM_USE_SYSTEM_EXPAT=On \
				-DGDCM_USE_SYSTEM_JSON=On \
				-DGDCM_USE_SYSTEM_LIBXML2=On \
				-DGDCM_USE_SYSTEM_OPENSSL=On \
				-DGDCM_USE_SYSTEM_OPENJPEG=On \
				-DGDCM_USE_SYSTEM_POPPLER=On \
				-DGDCM_USE_SYSTEM_ZLIB=On \
				-DGDCM_USE_SYSTEM_UUID=On

NO_TEST =			Yes

SUBST_VARS +=			API_V

.include <bsd.port.mk>
