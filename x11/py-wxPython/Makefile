# $OpenBSD: Makefile,v 1.2 2006/10/18 16:37:12 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"Python bindings for wxWidgets C++ class library"

DISTNAME=	wxPython-src-2.6.3.2
PKGNAME=	${DISTNAME:S/^/py-/:S/-src//}p0
CATEGORIES=	x11 devel

HOMEPAGE=	http://www.wxpython.org/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# modified LGPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wxpython/}

MODULES=	lang/python
LIB_DEPENDS=    wx_gtk2_gizmos,wx_gtk2_stc,wx_base_xml,wx_gtk2_qa,wx_base_odbc,wx_gtk2_html,wx_gtk2_gl,wx_base,wx_gtk2_adv,wx_gtk2_xrc,wx_gtk2_core,wx_base_net,wx_gtk2_dbgrid,wx_gtk2_animate:wxWidgets-gtk2->=2.6.3:x11/wxWidgets

WRKSRC=		${WRKDIST}/wxPython
NO_REGRESS=	Yes

pre-build:
	@perl -pi -e "s,!!WRKINST!!,${WRKINST},g" ${WRKSRC}/config.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-wxPython
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-wxPython/demo
	cd ${WRKSRC}/demo; tar -cf - * | \
		(cd ${PREFIX}/share/examples/py-wxPython/demo; tar -xf -)
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-wxPython/samples
	cd ${WRKSRC}/samples; tar -cf - * | \
		(cd ${PREFIX}/share/examples/py-wxPython/samples; tar -xf -)

.include <bsd.port.mk>
