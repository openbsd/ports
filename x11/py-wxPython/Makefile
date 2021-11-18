# $OpenBSD: Makefile,v 1.26 2021/11/18 16:22:36 op Exp $

COMMENT=	Python bindings for wxWidgets C++ class library

V=		3.0.2.0
REVISION=	1
DISTNAME=	wxPython-src-$V
PKGNAME=	py-wxPython-$V
CATEGORIES=	x11 devel

HOMEPAGE=	https://www.wxpython.org/

# modified LGPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wxpython/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
LIB_DEPENDS=    x11/wxWidgets>=3.0.4
WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB} m
WANTLIB += wx_baseu-3.0 wx_baseu_net-3.0 wx_baseu_xml-3.0 wx_gtk3u_adv-3.0
WANTLIB += wx_gtk3u_aui-3.0 wx_gtk3u_core-3.0 wx_gtk3u_gl-3.0
WANTLIB += wx_gtk3u_html-3.0 wx_gtk3u_propgrid-3.0 wx_gtk3u_qa-3.0
WANTLIB += wx_gtk3u_richtext-3.0 wx_gtk3u_stc-3.0 wx_gtk3u_xrc-3.0

COMPILER =		base-clang ports-gcc base-gcc

WRKSRC=		${WRKDIST}/wxPython

SUBST_VARS +=	WRKINST

NO_TEST=	Yes

pre-build:
	${SUBST_CMD} ${WRKSRC}/config.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-wxPython
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-wxPython/demo
	cd ${WRKSRC}/demo; tar -cf - * | \
		(cd ${PREFIX}/share/examples/py-wxPython/demo; tar -xf -)
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-wxPython/samples
	cd ${WRKSRC}/samples; tar -cf - * | \
		(cd ${PREFIX}/share/examples/py-wxPython/samples; tar -xf -)

.include <bsd.port.mk>
