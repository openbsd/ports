# $OpenBSD: Makefile,v 1.13 2019/07/12 20:47:24 sthen Exp $

COMMENT=	small and secure POP3 daemon

DISTNAME=	akpop3d-0.7.7
REVISION =	3
CATEGORIES=	mail
HOMEPAGE=	http://www.synflood.at/akpop3d.html

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c crypto ssl

MASTER_SITES=	http://www.synflood.at/akpop3d/ \
		http://www.mguillaud.net/ports/akpop3d/
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=--with-mysql=no

NO_TEST=	Yes

.include <bsd.port.mk>
