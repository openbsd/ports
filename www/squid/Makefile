# $OpenBSD: Makefile,v 1.1.1.1 1998/09/14 01:36:52 marc Exp $
#

DISTNAME=	squid-1.1.22-src
PKGNAME=	squid-1.1.22
CATEGORIES=	www
MASTER_SITES=	ftp://mirror.aarnet.edu.au/pub/squid/squid-1.1/ \
		ftp://squid.nlanr.net/pub/squid-1.1/

MAINTAINER=	d@openbsd.org

WRKSRC=		${WRKDIR}/${PKGNAME}
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--sysconfdir=/etc --localstatedir=/var/squid
INSTALL_TARGET=	-f makefile install

.include <bsd.port.mk>
