# $OpenBSD: Makefile,v 1.12 2017/05/22 20:03:43 giovanni Exp $

COMMENT=	small and secure POP3 daemon

DISTNAME=	akpop3d-0.7.7
REVISION =	3
CATEGORIES=	mail
HOMEPAGE=	http://www.synflood.at/akpop3d.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c crypto ssl

MASTER_SITES=	http://www.synflood.at/akpop3d/ \
		http://www.mguillaud.net/ports/akpop3d/
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=--with-mysql=no

NO_TEST=	Yes

.include <bsd.port.mk>
