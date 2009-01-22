# $OpenBSD: Makefile,v 1.14 2009/01/22 13:43:00 kevlo Exp $

COMMENT=	irc client that uses Tcl/Tk

DISTNAME=	quirc-0.9.84
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net

HOMEPAGE=	http://quirc.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		ICE SM X11 c m stdc++ tcl84 

MASTER_SITES=	${MASTER_SITE_OPENBSD}

LIB_DEPENDS=	tk84:tk-8.4.*:x11/tk/8.4

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-tcl-include-dir=${LOCALBASE}/include/tcl8.4 \
		--with-tk-include-dir=${LOCALBASE}/include/tk8.4

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/quirc/common
	${INSTALL_DATA_DIR} ${PREFIX}/share/quirc/themes
	${INSTALL_DATA} ${WRKSRC}/data/common/install.tcl ${PREFIX}/share/quirc/common
	${INSTALL_DATA} ${WRKSRC}/data/themes/default.tcl ${PREFIX}/share/quirc/themes

.include <bsd.port.mk>
