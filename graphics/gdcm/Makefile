# $OpenBSD: Makefile,v 1.2 2017/10/07 09:44:25 jasper Exp $

COMMENT =			cross-platform DICOM implementation

DISTNAME =			gdcm-2.8.3
SHARED_LIBS +=  gdcmCommon                0.0 # 2.8
SHARED_LIBS +=  gdcmDICT                  0.0 # 2.8
SHARED_LIBS +=  gdcmDSED                  0.0 # 2.8
SHARED_LIBS +=  gdcmIOD                   0.0 # 2.8
SHARED_LIBS +=  gdcmMEXD                  0.0 # 2.8
SHARED_LIBS +=  gdcmMSFF                  0.0 # 2.8
SHARED_LIBS +=  gdcmcharls                0.0 # 1.1
SHARED_LIBS +=  gdcmjpeg12                0.0 # 2.8
SHARED_LIBS +=  gdcmjpeg16                0.0 # 2.8
SHARED_LIBS +=  gdcmjpeg8                 0.0 # 2.8
SHARED_LIBS +=  socketxx                  0.0 # 1.2
CATEGORIES =			graphics
API_V =				2.8

HOMEPAGE =			http://gdcm.sourceforge.net/

MAINTAINER =			Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD/Apache2
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =			${MASTER_SITE_SOURCEFORGE:=gdcm/}

MODULES =			devel/cmake

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
