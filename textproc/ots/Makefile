# $OpenBSD: Makefile,v 1.22 2019/07/12 20:50:02 sthen Exp $

COMMENT=	open source tool for summarizing texts
DISTNAME=	ots-0.5.0
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libots/}
REVISION=	2

SHARED_LIBS +=  ots-1                5.0      # 5.0

HOMEPAGE=	http://libots.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB =  c glib-2.0 iconv intl lzma m pcre popt pthread xml2 z

LIB_DEPENDS=	devel/glib2 \
		devel/popt \
		textproc/libxml

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
