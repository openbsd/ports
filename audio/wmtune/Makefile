# $OpenBSD: Makefile,v 1.21 2015/01/22 17:47:50 naddy Exp $

COMMENT=	premier dockable radio tuner

DISTNAME=	wmtune-1.1c
REVISION=	4
CATEGORIES=	audio x11 x11/windowmaker

HOMEPAGE=	http://www.soren.org/linux/wmtune/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		${HOMEPAGE}dl/

MAKE_ENV=		CC="${CC}"

FLAVORS=		zoltrix
FLAVOR?=

.if ${FLAVOR:Mzoltrix}
CFLAGS+=		-DZOLTRIX
BINMODE=		4555
ONLY_FOR_ARCHS=		i386
.endif

WRKDIST=		${WRKDIR}/wmtune-1.0.1-combined/

post-extract:
	@cp ${FILESDIR}/wmtune.1 ${WRKDIST}

NO_TEST=		Yes

.include <bsd.port.mk>
