# $OpenBSD: Makefile,v 1.14 2009/09/08 15:33:15 jasper Exp $

COMMENT=		command-line WebDAV client

DISTNAME=		cadaver-0.23.2
CATEGORIES=     	net www

HOMEPAGE=		http://www.webdav.org/cadaver/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += asn1 c crypto curses expat gssapi krb5 readline ssl
WANTLIB += z

MODULES=		devel/gettext

LIB_DEPENDS=		neon::net/neon

MASTER_SITES=		${HOMEPAGE}

NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-ssl \
			--with-expat \
			--with-neon="${LOCALBASE}"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib"

.include <bsd.port.mk>
