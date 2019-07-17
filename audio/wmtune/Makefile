# $OpenBSD: Makefile,v 1.26 2019/07/17 14:49:20 danj Exp $

COMMENT=	premier dockable radio tuner

DISTNAME=	wmtune-1.1c
REVISION=	7
CATEGORIES=	audio x11 x11/windowmaker

HOMEPAGE=	http://www.soren.org/linux/wmtune/

PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		${HOMEPAGE}dl/

MAKE_ENV=		CC="${CC}"

FLAVORS=		zoltrix
FLAVOR?=

WRKDIST=		${WRKDIR}/wmtune-1.0.1-combined

post-extract:
	@cp ${FILESDIR}/wmtune.1 ${WRKDIST}

NO_TEST=		Yes

.include <bsd.port.mk>
