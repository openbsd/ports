# $OpenBSD: Makefile,v 1.6 2004/02/28 01:23:01 jolan Exp $

COMMENT=	"xfce4 file manager"
DISTNAME=	xffm-${V}

# XXX workaround gcc bugs on alpha/powerpc
.if ${MACHINE_ARCH:Malpha} || ${MACHINE_ARCH:Mpowerpc}
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
