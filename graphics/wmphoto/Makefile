# $OpenBSD: Makefile,v 1.8 2002/03/21 20:57:09 espie Exp $

COMMENT=		'wm-dockapp; shows photos and execute commands on that photo'

DISTNAME=		wmphoto-0.3a
CATEGORIES=		graphics x11 x11/windowmaker
NEED_VERSION=		1.515

HOMEPAGE=		http://www.dcc.uchile.cl/~amartoq/wmphoto/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS=		:ImageMagick-*:graphics/ImageMagick

USE_X11=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmphoto

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmphoto ${PREFIX}/bin
	${INSTALL_MAN} files/wmphoto.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
