# $OpenBSD: Makefile,v 1.9 2001/10/25 22:34:50 wilfried Exp $

COMMENT=		'wm-dockapp; shows the current date'

DISTNAME=		wmdate-0.7
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.482

HOMEPAGE=		http://wit401310.student.utwente.nl/~dalroi/apps/wmdate.php

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://wit401310.student.utwente.nl/~dalroi/apps/apps/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

LIB_DEPENDS=		dockapp::devel/libdockapp

USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	imake noman

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmdate
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/wmdate

.include <bsd.port.mk>
