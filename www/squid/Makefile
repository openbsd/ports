# $OpenBSD: Makefile,v 1.2 1999/03/17 03:59:28 brad Exp $

DISTNAME=	squid-1.1.22-src
PKGNAME=	squid-1.1.22
CATEGORIES=	www
MASTER_SITES=	ftp://mirror.aarnet.edu.au/pub/squid/squid-1.1/ \
		ftp://squid.nlanr.net/pub/squid-1.1/

MAINTAINER=	d@openbsd.org

WRKSRC=		${WRKDIR}/${PKGNAME}
SYSCONFDIR=	/etc/squid
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--sysconfdir=${SYSCONFDIR} --localstatedir=/var/squid
INSTALL_TARGET=	-f makefile install

.include <bsd.port.mk>
