# $OpenBSD: Makefile,v 1.6 1999/04/14 13:24:47 espie Exp $

DISTNAME=	transfig.3.2.1
PKGNAME=	transfig-3.2.1
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications/drawing_tools/transfig

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	jpeg:${PORTSDIR}/graphics/jpeg

RUN_DEPENDS=	gs:${PORTSDIR}/print/ghostscript5

# work-around, 2.5 is buggy
package-depends:
	@echo "png-1.0.3"
	@echo "jpeg-6b"
	@echo "ghostscript-5.10"
PKG_ARGS=		-v -c ${COMMENT} -d ${DESCR} -f ${PLIST} -p ${PREFIX} -P "`${MAKE} package-depends`"


USE_IMAKE=	yes

.include <bsd.port.mk>
