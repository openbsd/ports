# $OpenBSD: Makefile,v 1.2 2004/12/16 22:05:09 alek Exp $

COMMENT=	"menu editor for xfce4"
DISTNAME=	xfce4-menueditor-1.05
EXTRACT_SUFX=	.tar.bz2
MASTER_SITES=	${HOMEPAGE}files/

HOMEPAGE=	http://users.skynet.be/p0llux/

LIB_DEPENDS+=	xml2.7.10::textproc/libxml

WRKDIST=	${WRKDIR}/xfce4-menueditor

CONFIGURE_ARGS+=--disable-cvs

WANTLIB=	z

.include <bsd.port.mk>
