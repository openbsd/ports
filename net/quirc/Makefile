# $OpenBSD: Makefile,v 1.20 2010/10/24 21:30:01 ajacoutot Exp $

COMMENT=	irc client that uses Tcl/Tk

DISTNAME=	quirc-0.9.84
REVISION =	6
CATEGORIES=	net

HOMEPAGE=	http://quirc.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=		ICE SM X11 c m stdc++ ${MODTCL_LIB}

MODULES=	x11/tk

MASTER_SITES=	${MASTER_SITE_OPENBSD}
LIB_DEPENDS=	${MODTK_LIB_DEPENDS}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-tcl-include-dir=${MODTCL_INCDIR} \
		--with-tk-include-dir=${MODTK_INCDIR} \
		--with-tcl-version=${MODTCL_VERSION} \
		--with-tcl-lib=${MODTCL_LIB} \
		--with-tk-lib=${MODTK_LIB} \
		--with-wish=${MODTK_BIN}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/quirc/common
	${INSTALL_DATA_DIR} ${PREFIX}/share/quirc/themes
	${INSTALL_DATA} ${WRKSRC}/data/common/install.tcl ${PREFIX}/share/quirc/common
	${INSTALL_DATA} ${WRKSRC}/data/themes/default.tcl ${PREFIX}/share/quirc/themes

.include <bsd.port.mk>
