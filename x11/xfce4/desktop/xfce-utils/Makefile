# $OpenBSD: Makefile,v 1.3 2004/01/09 01:27:42 jolan Exp $

COMMENT=	"essential utilities and scripts for xfce4"
DISTNAME=	xfce-utils-${V}

LIB_DEPENDS=	${GTK2} \
		${MCS} \
		${GUI}

RUN_DEPENDS=	${MCSMANG}
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}

CONFIGURE_ARGS+=--with-browser="xterm -e lynx"

.include <bsd.port.mk>
