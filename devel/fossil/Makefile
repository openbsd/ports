COMMENT =		simple distributed software configuration management

V =			2.28
PKGNAME =		fossil-${V}

# commit ID must be changed in DISTFILES when updating, see
# https://fossil-scm.org/home/uv/download.html
DISTNAME =		fossil-src-${V}
DISTFILES =		{52445a27f116603d784ad753c6acd494e0b02aeaf8502ee0fee0aa30030f4c4e/}${DISTNAME}${EXTRACT_SUFX}

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
