# $OpenBSD: Makefile,v 1.22 2009/08/10 06:33:44 kili Exp $

COMMENT=	9wm with automatic window tiling and virtual desktops

DISTNAME=	larswm-7.5.3
PKGNAME=	${DISTNAME}p2
CATEGORIES=	plan9

HOMEPAGE=	http://www.lab1702.net/fnurt/larswm/
MASTER_SITES=	${HOMEPAGE} \
		http://openbsd.rutgers.edu/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB =	ICE SM X11 Xau Xdmcp Xext Xmu Xt c pthread-stubs xcb

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

DOCS=   ChangeLog README README.9wm

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/larswm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/larswm
	cd ${WRKSRC}; ${INSTALL_DATA} \
	    sample.larswmrc sample.xsession \
	    ${PREFIX}/share/examples/larswm
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/larswm

.include <bsd.port.mk>
