# $OpenBSD: Makefile,v 1.5 2004/12/16 22:05:09 alek Exp $

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

WANTLIB=	c

.include <bsd.port.mk>
