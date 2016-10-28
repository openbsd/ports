# $OpenBSD: Makefile,v 1.55 2016/10/28 20:18:06 kili Exp $

COMMENT =		simple distributed software configuration management

DISTNAME =		fossil-src-1.36
PKGNAME =		fossil-1.36
EPOCH =			0
CATEGORIES =		devel www

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://fossil-scm.org/
MASTER_SITES =		http://fossil-scm.org/index.html/uv/download/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS=		static
FLAVOR?=

WANTLIB =		c crypto fuse m ssl z

MODULES =		lang/tcl

WRKDIST =		${WRKDIR}/${PKGNAME}

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}

CONFIGURE_STYLE =	simple
CONFLICT_MARKER =	fossil-*-!static

.if ${FLAVOR} == "static"
CONFIGURE_ARGS +=	--static --with-openssl=none
PREFIX =		${VARBASE}/www
CONFLICT_MARKER =	fossil-*-static
.endif

SUBST_VARS +=		CONFLICT_MARKER STATIC

TEST_DEPENDS =		${MODTCL_RUN_DEPENDS}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/auto.def

do-test:
	@cd ${WRKSRC} && ${MODTCL_BIN} test/tester.tcl fossil

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/fossil ${PREFIX}/bin

.include <bsd.port.mk>
