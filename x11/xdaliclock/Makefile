# $OpenBSD: Makefile,v 1.23 2014/10/15 09:01:46 landry Exp $

COMMENT=	rather neat animated clock

DISTNAME=	xdaliclock-2.41
CATEGORIES=	x11

HOMEPAGE=	http://www.jwz.org/xdaliclock/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE SM X11 Xext Xt c

MASTER_SITES=	${HOMEPAGE}

USE_GROFF =	Yes

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKDIST}
WRKSRC=			${WRKDIST}/X11

NO_TEST=		Yes

.include <bsd.port.mk>
