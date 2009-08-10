# $OpenBSD: Makefile,v 1.16 2009/08/10 06:33:43 kili Exp $

COMMENT=	irc client that uses Tcl/Tk

DISTNAME=	quirc-0.9.84
PKGNAME=	${DISTNAME}p4
CATEGORIES=	net

HOMEPAGE=	http://quirc.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=		ICE SM X11 c m pthread-stubs stdc++ tcl84 xcb

MODULES=	x11/tk
MODTCL_VERSION=	8.4
MODTK_VERSION=	8.4
MASTER_SITES=	${MASTER_SITE_OPENBSD}

LIB_DEPENDS=	${MODTK_LIB_DEPENDS}

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-tcl-include-dir=${MODTCL_INCDIR} \
		--with-tk-include-dir=${MODTK_INCDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/quirc/common
	${INSTALL_DATA_DIR} ${PREFIX}/share/quirc/themes
	${INSTALL_DATA} ${WRKSRC}/data/common/install.tcl ${PREFIX}/share/quirc/common
	${INSTALL_DATA} ${WRKSRC}/data/themes/default.tcl ${PREFIX}/share/quirc/themes

.include <bsd.port.mk>
