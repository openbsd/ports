# $OpenBSD: Makefile,v 1.5 2001/03/28 10:05:04 wilfried Exp $

COMMENT=		'wm-dockapp; shows photos and execute commands on that photo'

DISTNAME=		wmphoto-0.3a
CATEGORIES=		graphics x11 x11/windowmaker
NEED_VERSION=		1.364

HOMEPAGE=		http://www.dcc.uchile.cl/~amartoq/wmphoto/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS=		convert::graphics/ImageMagick

USE_X11=		Yes

WRKSRC=			${WRKDIST}/wmphoto

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmphoto ${PREFIX}/bin
	${INSTALL_MAN} files/wmphoto.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
