# $OpenBSD: Makefile,v 1.3 2004/01/09 01:27:43 jolan Exp $

COMMENT=	"widget library required by xfce4 and xfwm4"
DISTNAME=	libxfcegui4-${V}

LIB_DEPENDS=	${GTK2} \
		${UTIL}

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
