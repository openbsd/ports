# $OpenBSD: Makefile,v 1.4 2004/07/11 23:33:38 jolan Exp $

COMMENT=	"essential utilities and scripts for xfce4"
DISTNAME=	xfce-utils-${V}

LIB_DEPENDS=	${GTK2} \
		${MCS} \
		${GUI}

RUN_DEPENDS=	${MCSMANG}
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}

USE_LIBTOOL=	yes

CONFIGURE_ARGS+=--with-browser="xterm -e lynx"

.include <bsd.port.mk>
