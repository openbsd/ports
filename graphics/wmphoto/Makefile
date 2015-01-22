# $OpenBSD: Makefile,v 1.22 2015/01/22 17:47:51 naddy Exp $

PORTROACH=		limit:^0\.3a

COMMENT=		wm-dockapp; shows photos and execute commands on that photo

DISTNAME=		wmphoto-0.3a
REVISION =		3
CATEGORIES=		graphics x11 x11/windowmaker

HOMEPAGE=		http://www.dcc.uchile.cl/~amartoq/wmphoto/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS=		graphics/ImageMagick
WANTLIB=		X11 Xext Xpm c

NO_TEST=		Yes

WRKSRC=			${WRKDIST}/wmphoto

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmphoto ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/wmphoto.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
