COMMENT =		simple distributed software configuration management

V =			2.27
PKGNAME =		fossil-${V}

# commit ID must be changed in DISTFILES when updating, see
# https://fossil-scm.org/home/uv/download.html
DISTNAME =		fossil-src-${V}
DISTFILES =		{99675884a93c09125dbfbef0ca47959626c81545c132e247e67a08bd12ac7256/}${DISTNAME}${EXTRACT_SUFX}

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

CONFIGURE_STYLE =	simple
CONFLICT_MARKER =	fossil-*-!static

.if ${FLAVOR} == "static"
CONFIGURE_ARGS +=	--static
PREFIX =		${VARBASE}/www
CONFLICT_MARKER =	fossil-*-static
.endif

SUBST_VARS +=		CONFLICT_MARKER STATIC

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/auto.def

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/fossil ${PREFIX}/bin

.include <bsd.port.mk>
