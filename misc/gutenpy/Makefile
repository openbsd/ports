# $OpenBSD: Makefile,v 1.16 2019/07/12 20:47:50 sthen Exp $

COMMENT=		text reader and catalog browser for Project Gutenberg

DISTNAME=		gutenpy-0.3.0
REVISION =		8
CATEGORIES=		misc x11

HOMEPAGE=		http://gutenpy.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gutenpy/}
EXTRACT_SUFX=		.zip

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		textproc/py-xml \
			x11/py-gtk2>=2.6.3
			
NO_BUILD=		Yes
NO_TEST=		Yes

LIB_DIR=	${PREFIX}/lib/python${MODPY_VERSION}/site-packages/GutenPy

do-configure:
		@perl -pi -e 's,!!PYTHON!!,${MODPY_BIN},' ${WRKSRC}/gutenpy.py

do-install:
		${INSTALL_SCRIPT} ${WRKSRC}/gutenpy.py ${PREFIX}/bin/gutenpy
		${INSTALL_DATA_DIR} ${LIB_DIR}
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gutenpy
		${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/gutenpy
		${INSTALL_DATA} ${WRKSRC}/GutenPy/* ${LIB_DIR}
		${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/gutenpy/
		${INSTALL_DATA} ${WRKSRC}/icons/* ${PREFIX}/share/pixmaps/gutenpy/

.include <bsd.port.mk>
