# $OpenBSD: Makefile,v 1.23 2015/01/21 06:23:34 bentley Exp $

COMMENT=	irc client that uses Tcl/Tk

DISTNAME=	quirc-0.9.84
REVISION =	7
CATEGORIES=	net

HOMEPAGE=	http://quirc.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=		ICE SM X11 c m stdc++ ${MODTCL_LIB}

MODULES=	x11/tk

MASTER_SITES =	${MASTER_SITE_OPENBSD}
LIB_DEPENDS =	${MODTK_LIB_DEPENDS}
WANTLIB +=	${MODTK_WANTLIB}

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
