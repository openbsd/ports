# $OpenBSD: Makefile,v 1.2 2004/10/31 18:45:50 sturm Exp $

COMMENT=	"Anonymity service using onion routing"

DISTNAME=	tor-0.0.8.1
CATEGORIES=	net
HOMEPAGE=	http://www.freehaven.net/tor/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.freehaven.net/tor/dist/

AUTOCONF_VERSION= 2.59

CONFIGURE_STYLE= gnu
FAKE_FLAGS=DESTDIR=${WRKINST} sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
