COMMENT=	command-line WebDAV client

DISTNAME=	cadaver-0.28
CATEGORIES=	net www

HOMEPAGE=	https://notroj.github.io/cadaver/
SITES=		${HOMEPAGE}

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto curses expat iconv intl neon proxy
WANTLIB += pthread readline ssl z

LIB_DEPENDS=	net/neon

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-ssl \
		--with-neon="${LOCALBASE}"

NO_TEST=	Yes

.include <bsd.port.mk>
