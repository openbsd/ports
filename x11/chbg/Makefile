# $OpenBSD: Makefile,v 1.3 2002/05/15 17:58:51 espie Exp $

COMMENT=		"Desktop wallpaper manager and X11 screensaver"

DISTNAME=		chbg-1.5
CATEGORIES=     	x11
NEED_VERSION=		1.489

HOMEPAGE=		http://chbg.sf.net
EXTRACT_SUFX=		.tgz

MAINTAINER=		Heikki Korpela <heko@openbsd.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=chbg/}

LIB_DEPENDS=		gdk_imlib.19::graphics/imlib

CONFIGURE_ARGS=		--with-image-library=gdkimlib \
			--with-imlib1-config=${LOCALBASE}/bin/imlib-config \
			--with-gtk-config=${LOCALBASE}/bin/gtk-config

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

SEPARATE_BUILD=		concurrent

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/chbg
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/chbg
	${INSTALL_DATA} ${WRKSRC}/kde2.txt ${PREFIX}/share/doc/chbg
	${INSTALL_DATA} ${WRKSRC}/xscreensaver-howto.txt ${PREFIX}/share/doc/chbg
	${INSTALL_DATA} ${WRKSRC}/chbgrc.sample ${PREFIX}/share/examples/chbg

.include <bsd.port.mk>
