# $OpenBSD: Makefile,v 1.4 2001/03/09 14:28:49 wilfried Exp $

DISTNAME=		wmphoto-0.3a
CATEGORIES=		graphics x11 x11/windowmaker
NEED_VERSION=		1.340

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
