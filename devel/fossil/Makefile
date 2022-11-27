COMMENT =		simple distributed software configuration management

DISTNAME =		fossil-2.20
EPOCH =			0
CATEGORIES =		devel www

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://fossil-scm.org/
MASTER_SITES =		https://fossil-scm.org/home/tarball/
DISTFILES =		{210e89a0597f225f49722b096cf5563bf193e920e02a9bd38503a906deacd416/}${DISTNAME}${EXTRACT_SUFX}


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
