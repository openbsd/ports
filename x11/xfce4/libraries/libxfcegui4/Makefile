# $OpenBSD: Makefile,v 1.1.1.1 2003/12/15 06:11:52 jolan Exp $

COMMENT=	"widget library required by xfce4 and xfwm4"
DISTNAME=	libxfcegui4-4.0.1

LIB_DEPENDS=	${GTK2} \
		${UTIL}

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
