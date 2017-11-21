# $OpenBSD: Makefile,v 1.26 2017/11/21 00:13:02 naddy Exp $

COMMENT=		command-line WebDAV client

DISTNAME=		cadaver-0.23.3
REVISION=		5
CATEGORIES=		net www

HOMEPAGE=		http://www.webdav.org/cadaver/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  c crypto curses expat iconv intl neon proxy pthread readline
WANTLIB += ssl z

LIB_DEPENDS=		net/neon

MASTER_SITES=		${HOMEPAGE}

NO_TEST=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-ssl \
			--with-expat \
			--with-neon="${LOCALBASE}"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib"

.include <bsd.port.mk>
