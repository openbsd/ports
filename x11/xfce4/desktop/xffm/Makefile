# $OpenBSD: Makefile,v 1.5 2004/01/22 07:20:08 jolan Exp $

COMMENT=	"xfce4 file manager"
DISTNAME=	xffm-${V}

# XXX workaround gcc bugs on ppc/sparc64
.if ${MACHINE_ARCH:Malpha} || ${MACHINE_ARCH:Mpowerpc} || \
	${MACHINE_ARCH:Msparc64}
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
