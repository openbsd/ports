# $OpenBSD: Makefile,v 1.1.1.1 2003/12/15 06:11:34 jolan Exp $

COMMENT=	"xfce4 file manager"
DISTNAME=	xffm-4.0.1

# XXX workaround gcc bugs on sparc64
.if ${MACHINE_ARCH:Msparc64}
PATCH_LIST=	patch-* gcc-*
.endif

LIB_DEPENDS=	${GTK2} \
		${GTHREAD} \
		${XML2} \
		${DBH} \
		${MCS} \
		${GUI}

RUN_DEPENDS=	${MCSMANG}
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}
		
.include <bsd.port.mk>
