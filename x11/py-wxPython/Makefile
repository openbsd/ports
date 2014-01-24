# $OpenBSD: Makefile,v 1.15 2014/01/24 14:58:56 dcoppa Exp $

SHARED_ONLY=	Yes

COMMENT=	Python bindings for wxWidgets C++ class library

V=		2.8.12.0
REVISION=	2
DISTNAME=	wxPython-src-$V
PKGNAME=	py-wxPython-$V
CATEGORIES=	x11 devel

HOMEPAGE=	http://www.wxpython.org/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# modified LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wxpython/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python
LIB_DEPENDS=    x11/wxWidgets>=2.8.12
WANTLIB +=	wx_gtk2_aui wx_gtk2_richtext wx_gtk2_gizmos wx_gtk2_stc \
		wx_base_xml wx_gtk2_qa wx_base_odbc wx_gtk2_html \
		wx_gtk2_gl wx_base wx_gtk2_adv wx_gtk2_xrc wx_gtk2_core \
		wx_base_net wx_gtk2_dbgrid m pthread stdc++ ${MODPY_WANTLIB}

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
