# $OpenBSD: Makefile,v 1.11 2017/06/04 02:58:48 schwarze Exp $

COMMENT=	convert man pages to HTML

DISTNAME=	man2web-0.88
REVISION=	1
CATEGORIES=	www
HOMEPAGE=	http://man2web.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=man2web/}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-distro=openbsd-3
CONFIGURE_ARGS+= --disable-lynx		# requires lynxcgi support
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/helpers

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/man2web

.include <bsd.port.mk>
