# $OpenBSD: Makefile,v 1.13 2009/08/10 06:32:43 kili Exp $

COMMENT=	simple program for plotting 2d mathematical functions

DISTNAME=	geg-1.0.2
PKGNAME=	${DISTNAME}p2
CATEGORIES=	math

MASTER_SITES=	http://www.infolaunch.com/~daveb/ \
		${MASTER_SITE_SUNSITE:=science/visualization/plotting/}

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

HOMEPAGE=	http://www.infolaunch.com/~daveb/

FAKE_FLAGS=	PREFIX="${WRKINST}${PREFIX}"

USE_X11=	Yes

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c gdk gmodule m pthread-stubs xcb

MODULES=	devel/gettext
LIB_DEPENDS=	gtk.>=1.2::x11/gtk+ \
		glib.>=1::devel/glib

CONFIGURE_STYLE= gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/geg ${PREFIX}/bin/geg
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/geg
	${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/geg
	${INSTALL_MAN} ${WRKSRC}/geg.1 ${PREFIX}/man/man1/geg.1

.include <bsd.port.mk>
