# $OpenBSD: Makefile,v 1.1.1.1 2004/02/12 01:24:58 jolan Exp $

COMMENT=	"menu editor for xfce4"
DISTNAME=	xfce4-menueditor-1.05
EXTRACT_SUFX=	.tar.bz2
MASTER_SITES=	${HOMEPAGE}files/

HOMEPAGE=	http://users.skynet.be/p0llux/

LIB_DEPENDS+=	xml2.7.10::textproc/libxml

WRKDIST=	${WRKDIR}/xfce4-menueditor

CONFIGURE_ARGS+=--disable-cvs

.include <bsd.port.mk>
