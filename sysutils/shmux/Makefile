COMMENT=		execute a command on many hosts in parallel

DISTNAME=		shmux-1.0.3
REVISION=		0
CATEGORIES=		sysutils
HOMEPAGE=		https://web.taranis.org/shmux/dist/
SITES=			${HOMEPAGE}dist/
EXTRACT_SUFX=		.tgz

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c curses pcre

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--datarootdir=${PREFIX}/share/doc

DEBUG_PACKAGES=		${BUILD_PACKAGES}

LIB_DEPENDS=		devel/pcre
RUN_DEPENDS=		net/fping

ALL_TARGET=
TEST_TARGET=		test

.include <bsd.port.mk>
