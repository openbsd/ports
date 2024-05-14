COMMENT =		simple distributed software configuration management

# commit ID must be changed in DISTFILES when updating, see
# https://fossil-scm.org/home/uv/download.html
DISTNAME =		fossil-2.24
REVISION =		0

#DISTFILES =		{8be0372c1051043761320c8ea8669c3cf320c406e5fe18ad36b7be5f844ca73b}${DISTNAME}${EXTRACT_SUFX}
# temporary, mistake in 2.24 update requires this file to be renamed.
# switch back to the above scheme for 2.25.
DISTFILES =		${DISTNAME}-1{8be0372c1051043761320c8ea8669c3cf320c406e5fe18ad36b7be5f844ca73b/${DISTNAME}}${EXTRACT_SUFX}

CATEGORIES =		devel www
EPOCH =			0

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://fossil-scm.org/
SITES =			https://fossil-scm.org/home/tarball/

# BSD
PERMIT_PACKAGE =	Yes

FLAVORS=		static
FLAVOR?=

# uses pledge()
WANTLIB =		c crypto fuse m ssl z

MODULES =		lang/tcl
MODTCL_VERSION =	8.6

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}

CONFIGURE_STYLE =	simple
CONFLICT_MARKER =	fossil-*-!static

.if ${FLAVOR} == "static"
CONFIGURE_ARGS +=	--static
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
