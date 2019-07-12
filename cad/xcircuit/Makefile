# $OpenBSD: Makefile,v 1.31 2019/07/12 20:43:45 sthen Exp $

COMMENT =	circuit drawing and schematic capture

BASEVER =	3.7
DISTNAME =	xcircuit-${BASEVER}.57
CATEGORIES =	cad
HOMEPAGE =	http://opencircuitdesign.com/xcircuit/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =	c m z ICE Xt X11 SM Xpm ${MODTK_WANTLIB}

MASTER_SITES =	${HOMEPAGE:=archive/}
EXTRACT_SUFX =	.tgz

MODULES =	x11/tk
LIB_DEPENDS =	${MODTK_LIB_DEPENDS}

USE_GMAKE =	Yes

CONFIGURE_STYLE =	autoconf no-autoheader
AUTOCONF_VERSION =	2.68
CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR}

NO_TEST =	Yes

SUBST_VARS =	BASEVER

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
