# $OpenBSD: Makefile,v 1.2 2003/12/22 21:47:59 jolan Exp $

COMMENT=	"settings manager for xfce4"
DISTNAME=	xfce-mcs-manager-4.0.2

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	${GTK2} \
		${MCS} \
		${GUI}

.include <bsd.port.mk>
