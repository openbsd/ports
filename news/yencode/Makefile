COMMENT=	encoder/decoder tool for the Usenet yEnc encoding format

DISTNAME=	yencode-0.46
REVISION=	3
CATEGORIES=	news

SITES=		${SITE_SOURCEFORGE:=yencode/}

LIB_DEPENDS=	devel/gettext,-runtime

WANTLIB=	c iconv intl

# GPL
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=	--with-libiconv-prefix="${LOCALBASE}"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=	Yes

.include <bsd.port.mk>
