# $OpenBSD: Makefile,v 1.3 2004/01/09 01:27:42 jolan Exp $

COMMENT=	"settings manager for xfce4"
DISTNAME=	xfce-mcs-manager-${V}

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	${GTK2} \
		${MCS} \
		${GUI}

.include <bsd.port.mk>
