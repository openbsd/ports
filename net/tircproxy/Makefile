# $OpenBSD: Makefile,v 1.17 2010/10/18 18:36:59 espie Exp $

COMMENT=	transparent IRC proxy

DISTNAME=	tircproxy-0.4.5
CATEGORIES=     net

HOMEPAGE=	http://bre.klaki.net/programs/tircproxy/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE= gnu
INSTALL_TARGET=	install-strip

WRKDIST=	${WRKDIR}/tircproxy-0.4

USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
