# $OpenBSD: Makefile,v 1.6 2005/03/08 16:09:42 naddy Exp $

COMMENT=	"anonymity service using onion routing"

DISTNAME=	tor-0.0.9.5
CATEGORIES=	net
HOMEPAGE=	http://www.freehaven.net/tor/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl z

MASTER_SITES=	http://www.freehaven.net/tor/dist/

AUTOCONF_VERSION= 2.59

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-ssl-dir=/usr

FAKE_FLAGS=DESTDIR=${WRKINST} sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
