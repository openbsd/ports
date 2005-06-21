# $OpenBSD: Makefile,v 1.10 2005/06/21 22:54:28 robert Exp $

COMMENT=	"anonymity service using onion routing"

DISTNAME=	tor-0.1.0.10
CATEGORIES=	net
HOMEPAGE=	http://tor.eff.org/

MAINTAINER=	Jon Trembley <jon@brain-box.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto pthread ssl z

MASTER_SITES=	${HOMEPAGE}dist/

AUTOCONF_VERSION=2.59

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-ssl-dir=/usr

FAKE_FLAGS=	DESTDIR=${WRKINST} sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
