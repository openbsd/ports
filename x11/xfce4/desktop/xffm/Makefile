# $OpenBSD: Makefile,v 1.8 2004/12/16 22:05:09 alek Exp $

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

USE_LIBTOOL=	yes

WANTLIB=	c pthread z

.include <bsd.port.mk>
