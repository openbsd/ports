# $OpenBSD: Makefile,v 1.1.1.1 2003/12/15 06:11:33 jolan Exp $

COMMENT=	"essential utilities and scripts for xfce4"
DISTNAME=	xfce-utils-4.0.1

LIB_DEPENDS=	${GTK2} \
		${MCS} \
		${GUI}

RUN_DEPENDS=	${MCSMANG}
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}

CONFIGURE_ARGS+=--with-browser="xterm -e lynx"

.include <bsd.port.mk>
