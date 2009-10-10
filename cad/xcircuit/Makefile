# $OpenBSD: Makefile,v 1.12 2009/10/10 22:41:40 steven Exp $

SHARED_ONLY=		Yes

COMMENT=		circuit drawing and schematic capture

BASEVER=		3.4
DISTNAME=		xcircuit-${BASEVER}.30
CATEGORIES=		cad

HOMEPAGE=		http://opencircuitdesign.com/xcircuit/

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m z ICE Xt X11 SM Xpm

MASTER_SITES=		${HOMEPAGE}archive/
EXTRACT_SUFX=		.tgz

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR}

MODULES=		x11/tk
LIB_DEPENDS+=		${MODTK_LIB_DEPENDS}

USE_X11=		Yes
USE_GMAKE=		Yes

NO_REGRESS=		Yes

SUBST_VARS=		BASEVER

post-install:
	@cd ${WRKSRC} && ${MAKE} install-man
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xcircuit
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/xcircuit
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xcircuit
	${INSTALL_DATA} ${WRKSRC}/examples/*.* \
		${PREFIX}/share/examples/xcircuit
	${INSTALL_DATA} ${WRKSRC}/examples/.xcircuitrc \
		${PREFIX}/share/examples/xcircuit/dot.xcircuitrc

.include <bsd.port.mk>
