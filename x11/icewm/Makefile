# $OpenBSD: Makefile,v 1.7 2001/01/22 21:55:28 naddy Exp $

DISTNAME=		icewm-1.0.4
CATEGORIES=     	x11	
NEED_VERSION=		1.309

MAINTAINER=		ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"Yes"
PERMIT_PACKAGE_FTP=	"Yes"
PERMIT_DISTFILES_CDROM=	"Yes"
PERMIT_DISTFILES_FTP=	"Yes"

MASTER_SITES=		http://download.sourceforge.net/icewm/ \
			http://www.physik.TU-Berlin.DE/~ibex/ports/distfiles/	
EXTRACT_SUFX=           .src.tar.gz

HOMEPAGE=		http://icewm.sourceforge.net/

LIB_DEPENDS=		Imlib.19::graphics/imlib

USE_GMAKE=		Yes
USE_X11=		Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		--with-imlib=${PREFIX}/bin

post-install:
	${INSTALL_DATA} ${FILESDIR}/bsd-daemon.xpm ${PREFIX}/lib/X11/icewm/taskbar
	@echo "Installing docs to ${PREFIX}/share/docs/icewm"
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/icewm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/icewm/doc
	cd ${WRKSRC} && ${INSTALL_DATA} COPYING README FAQ \
		${PREFIX}/share/doc/icewm
	cd ${WRKSRC}/doc && ${INSTALL_DATA} *.html \
		${PREFIX}/share/doc/icewm/doc 	
.include <bsd.port.mk>
