# $OpenBSD: Makefile,v 1.19 2006/11/13 12:51:15 steven Exp $

COMMENT=	"9wm with automatic window tiling and virtual desktops"

DISTNAME=	larswm-7.5.3
CATEGORIES=	plan9
MASTER_SITES=	http://home.earthlink.net/~lab1701/larswm/ \
		http://openbsd.rutgers.edu/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xmu Xt c

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
