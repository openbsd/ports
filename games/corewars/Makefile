# $OpenBSD: Makefile,v 1.12 2009/08/10 06:31:41 kili Exp $

COMMENT=	computer simulation game

DISTNAME=	corewars-0.9.13
PKGNAME=	${DISTNAME}p0

CATEGORIES=	games x11

HOMEPAGE=	http://corewars.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext Xi c glib gmodule m pthread-stubs xcb

MODULES=	devel/gettext

LIB_DEPENDS=	gtk.>=1.2,gdk::x11/gtk+ 

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=corewars/}

CONFIGURE_STYLE=gnu
USE_X11=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/corewars
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/corewars

.include <bsd.port.mk>
