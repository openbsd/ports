# $OpenBSD: Makefile,v 1.2 2003/12/22 21:48:00 jolan Exp $

COMMENT=	"widget library required by xfce4 and xfwm4"
DISTNAME=	libxfcegui4-4.0.2

LIB_DEPENDS=	${GTK2} \
		${UTIL}

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
