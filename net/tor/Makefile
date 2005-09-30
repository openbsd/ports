# $OpenBSD: Makefile,v 1.16 2005/09/30 09:18:10 alek Exp $

COMMENT=	"anonymity service using onion routing"

DISTNAME=	tor-0.1.0.15
CATEGORIES=	net
HOMEPAGE=	http://tor.eff.org/

MAINTAINER=	Jon Trembley <jon@brain-box.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl z

MASTER_SITES=	${HOMEPAGE}dist/

AUTOCONF_VERSION=2.59

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-ssl-dir=/usr

FAKE_FLAGS=	DESTDIR=${WRKINST} sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
