COMMENT=		command-line WebDAV client

DISTNAME=		cadaver-0.26
CATEGORIES=		net www
REVISION=		0

HOMEPAGE=		https://notroj.github.io/cadaver/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB =  c crypto curses expat iconv intl neon proxy pthread readline
WANTLIB += ssl z

LIB_DEPENDS=		net/neon

SITES=			${HOMEPAGE}

NO_TEST=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-ssl \
			--with-neon="${LOCALBASE}"

.include <bsd.port.mk>
