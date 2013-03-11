# $OpenBSD: Makefile,v 1.19 2013/03/11 11:35:57 espie Exp $

COMMENT=	transparent IRC proxy

DISTNAME=	tircproxy-0.4.5
REVISION=	0
CATEGORIES=     net

HOMEPAGE=	http://bre.klaki.net/programs/tircproxy/

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE= gnu
INSTALL_TARGET=	install-strip

WRKDIST=	${WRKDIR}/tircproxy-0.4

USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
