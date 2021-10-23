# $OpenBSD: Makefile,v 1.2 2021/08/23 14:24:40 thfr Exp $

COMMENT =	emulator for Steam online features

# commit from 2021-08-07
GL_V =		0.2.5pl0
GL_ACCOUNT =	Mr_Goldberg
GL_PROJECT =	goldberg_emulator
GL_COMMIT =	c5f50ddb3261cca857f220440313df80010291bd
DISTNAME =	${GL_PROJECT}-${GL_V}{${GL_COMMIT}}
PKGNAME =	${GL_PROJECT}-${GL_V}
REVISION =	0

SHARED_LIBS +=	steam_api	0.0	# 2.5
CATEGORIES =	games
HOMEPAGE =	https://gitlab.com/${GL_ACCOUNT}/${GL_PROJECT}
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m protobuf-lite
MASTER_SITES =		https://gitlab.com/${GL_ACCOUNT}/${GL_PROJECT}/-/archive/${GL_COMMIT}/
FIX_CRLF_FILES =	${WRKSRC}/sdk_includes/steamclientpublic.h
COMPILER =		base-clang ports-gcc
LIB_DEPENDS =		devel/protobuf
USE_GMAKE =		Yes
NO_TEST =		Yes
WRKDIST =		${WRKDIR}/${GL_PROJECT}-${GL_COMMIT}
SUBST_VARS +=		CXXFLAGS

do-gen:
	${SUBST_CMD} ${WRKSRC}/Makefile

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libsteam_api.so \
		${PREFIX}/lib/libsteam_api.so.${LIBsteam_api_VERSION}
	${INSTALL_DATA_DIR} ${PREFIX}/include/goldberg_emulator/sdk_includes/
	cp ${WRKBUILD}/sdk_includes/*.h \
		${PREFIX}/include/goldberg_emulator/sdk_includes/

.include <bsd.port.mk>
