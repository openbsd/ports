# $OpenBSD: Makefile,v 1.18 2019/07/12 20:48:32 sthen Exp $

COMMENT=	implementation of Lotus Sametime Community Client protocol

DISTNAME=	meanwhile-1.0.2
REVISION=	6
SHARED_LIBS=	meanwhile 1.2
CATEGORIES=	devel net

HOMEPAGE=	http://meanwhile.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB =  glib-2.0>=800 iconv intl m pcre pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=meanwhile/}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-mailme=no \
		--enable-doxygen=no

LIB_DEPENDS=	devel/glib2


.include <bsd.port.mk>
