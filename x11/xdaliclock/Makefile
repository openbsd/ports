# $OpenBSD: Makefile,v 1.24 2015/02/16 22:57:14 naddy Exp $

COMMENT=	rather neat animated clock

DISTNAME=	xdaliclock-2.41
CATEGORIES=	x11

HOMEPAGE=	http://www.jwz.org/xdaliclock/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE SM X11 Xext Xt c

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKDIST}
WRKSRC=			${WRKDIST}/X11

NO_TEST=		Yes

.include <bsd.port.mk>
