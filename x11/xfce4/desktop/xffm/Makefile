# $OpenBSD: Makefile,v 1.3 2003/12/22 21:48:00 jolan Exp $

COMMENT=	"xfce4 file manager"
DISTNAME=	xffm-4.0.2

# XXX workaround gcc bugs on ppc/sparc64
.if ${MACHINE_ARCH:Mpowerpc} || ${MACHINE_ARCH:Msparc64}
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
