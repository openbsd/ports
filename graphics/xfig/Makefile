# $OpenBSD: Makefile,v 1.6 1999/04/14 13:24:48 espie Exp $

DISTNAME=	xfig.3.2.2
PKGNAME=	xfig-3.2.2
CATEGORIES=	graphics x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications/drawing_tools/xfig

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	jpeg:${PORTSDIR}/graphics/jpeg \
		Xaw3d:${PORTSDIR}/x11/Xaw3d
RUN_DEPENDS=	fig2dev:${PORTSDIR}/print/transfig \
		gv:${PORTSDIR}/print/gv

# work-around, 2.5 is buggy
package-depends:
	@echo "Xaw3d-1.3"
	@echo "png-1.0.3"
	@echo "jpeg-6b"
	@echo "ghostscript-5.10"
	@echo "gv-3.5.8"
	@echo "transfig-3.2.1"

PKG_ARGS=		-v -c ${COMMENT} -d ${DESCR} -f ${PLIST} -p ${PREFIX} -P "`${MAKE} package-depends`"

USE_IMAKE=	yes
MAKE_FLAGS=	BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man1 \
		XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults  \
		XFIGLIBDIR=${PREFIX}/lib/X11/xfig  -f

.include <bsd.port.mk>
