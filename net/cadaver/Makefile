# $OpenBSD: Makefile,v 1.25 2014/04/21 11:26:05 sthen Exp $

COMMENT=		command-line WebDAV client

DISTNAME=		cadaver-0.23.3
REVISION=		4
CATEGORIES=		net www

HOMEPAGE=		http://www.webdav.org/cadaver/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curses expat neon proxy pthread readline ssl z

MODULES=		devel/gettext

LIB_DEPENDS=		net/neon

MASTER_SITES=		${HOMEPAGE}

NO_TEST=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-ssl \
			--with-expat \
			--with-neon="${LOCALBASE}"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib"

.include <bsd.port.mk>
