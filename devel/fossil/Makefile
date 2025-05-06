COMMENT =		simple distributed software configuration management

V =			2.26
PKGNAME =		fossil-${V}

# commit ID must be changed in DISTFILES when updating, see
# https://fossil-scm.org/home/uv/download.html
DISTNAME =		fossil-src-${V}
DISTFILES =		{1205ec86cb5508e94b90698db2900997fe5c9db62429c67ac6fdc03d59aa2782/}${DISTNAME}${EXTRACT_SUFX}

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
