# $OpenBSD: Makefile,v 1.5 2004/12/16 22:05:09 alek Exp $

COMMENT=	"xfce4 desktop background manager"
DISTNAME=	xfdesktop-${V}

LIB_DEPENDS=	${GTK2} \
		${XML2} \
		${MCS} \
		${GUI}

RUN_DEPENDS=	${MCSMANG}
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}

USE_LIBTOOL=	yes

WANTLIB=	c z

.include <bsd.port.mk>
