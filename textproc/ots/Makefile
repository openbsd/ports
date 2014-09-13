# $OpenBSD: Makefile,v 1.18 2014/09/13 16:36:54 ajacoutot Exp $

COMMENT=	open source tool for summarizing texts
DISTNAME=	ots-0.5.0
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libots/}

SHARED_LIBS +=  ots-1                5.0      # 5.0

HOMEPAGE=	http://libots.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c glib-2.0 m pcre popt pthread xml2 z

MODULES=	devel/gettext

LIB_DEPENDS=	devel/glib2 \
		devel/popt \
		textproc/libxml

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
