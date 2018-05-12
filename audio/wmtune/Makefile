# $OpenBSD: Makefile,v 1.24 2018/05/12 10:00:24 espie Exp $

COMMENT=	premier dockable radio tuner

DISTNAME=	wmtune-1.1c
REVISION=	6
CATEGORIES=	audio x11 x11/windowmaker

HOMEPAGE=	http://www.soren.org/linux/wmtune/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>

PERMIT_PACKAGE_CDROM=	Yes

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
