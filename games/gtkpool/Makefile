# $OpenBSD: Makefile,v 1.2 2001/03/15 15:37:23 reinhard Exp $

DISTNAME=	gtkpool-0.3.4
CATEGORIES=	games x11
NEED_VERSION=	1.359
MASTER_SITES=	${HOMEPAGE}	

HOMEPAGE=	http://gtkpool.seul.org/

LIB_DEPENDS=	gtk.1.2::x11/gtk+
BUILD_DEPENDS=	gtk-config::x11/gtk+

MAINTAINER=	Peter Valchev <pvalchev@toxiclinux.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_X11=	Yes
MAKE_ENV=	CFLAGS="${CFLAGS}" CPPFLAGS="${CPPFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gtkpool ${PREFIX}/bin/gtkpool
	${INSTALL_DATA_DIR} ${PREFIX}/lib/gtkpool
	${INSTALL_DATA} ${WRKSRC}/pixmaps/* ${PREFIX}/lib/gtkpool

.include <bsd.port.mk>
