# $OpenBSD: Makefile,v 1.4 2004/12/16 22:05:09 alek Exp $

COMMENT=	"settings manager for xfce4"
DISTNAME=	xfce-mcs-manager-${V}

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	${GTK2} \
		${MCS} \
		${GUI}

WANTLIB=	c

.include <bsd.port.mk>
