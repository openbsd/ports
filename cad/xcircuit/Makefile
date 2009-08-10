# $OpenBSD: Makefile,v 1.11 2009/08/10 06:30:30 kili Exp $

SHARED_ONLY=		Yes

COMMENT=		circuit drawing and schematic capture

BASEVER=		3.4
DISTNAME=		xcircuit-${BASEVER}.27
PKGNAME=		${DISTNAME}p3
CATEGORIES=		cad

HOMEPAGE=		http://opencircuitdesign.com/xcircuit/

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m z ICE Xt X11 SM Xpm pthread-stubs tcl84 xcb

MASTER_SITES=		${HOMEPAGE}archive/
EXTRACT_SUFX=		.tgz

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-tcl=${LOCALBASE}/lib/tcl8.4 \
			--with-tk=${LOCALBASE}/lib/tk8.4

LIB_DEPENDS+=		tk84:tk->=8.4,<8.5:x11/tk/8.4

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
