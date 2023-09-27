COMMENT=	open source tool for summarizing texts
DISTNAME=	ots-0.5.0
CATEGORIES=	textproc
SITES=		${SITE_SOURCEFORGE:=libots/}
REVISION=	3

SHARED_LIBS +=  ots-1                5.0      # 5.0

HOMEPAGE=	http://libots.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB =  c glib-2.0 iconv intl lzma m pcre2-8 popt pthread xml2 z

LIB_DEPENDS=	devel/glib2 \
		devel/popt \
		textproc/libxml

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
