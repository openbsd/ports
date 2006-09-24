# $OpenBSD: Makefile,v 1.23 2006/09/24 20:34:06 jcs Exp $

COMMENT=	"anonymity service using onion routing"

DISTNAME=	tor-0.1.1.23
CATEGORIES=	net
HOMEPAGE=	http://tor.eff.org/

MAINTAINER=	Rui Reis <rui@rui.cx>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto event ssl z

MASTER_SITES=	${HOMEPAGE}dist/

AUTOCONF_VERSION=2.59

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-ssl-dir=/usr

DB_DIR=		/var/tor
SUBST_VARS=	DB_DIR

FAKE_FLAGS=	DESTDIR=${WRKINST} sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
