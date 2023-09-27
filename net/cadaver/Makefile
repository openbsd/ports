COMMENT=		command-line WebDAV client

DISTNAME=		cadaver-0.24
CATEGORIES=		net www

HOMEPAGE=		https://notroj.github.io/cadaver/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB =  c crypto curses expat intl iconv neon proxy readline ssl z

LIB_DEPENDS=		net/neon

SITES=			${HOMEPAGE}

NO_TEST=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-ssl \
			--with-neon="${LOCALBASE}"

.include <bsd.port.mk>
