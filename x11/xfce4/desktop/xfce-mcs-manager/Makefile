# $OpenBSD: Makefile,v 1.1.1.1 2003/12/15 06:11:33 jolan Exp $

COMMENT=	"settings manager for xfce4"
DISTNAME=	xfce-mcs-manager-4.0.1

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	${GTK2} \
		${MCS} \
		${GUI}

.include <bsd.port.mk>
