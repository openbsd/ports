# $OpenBSD: Makefile,v 1.2 2005/06/29 03:33:41 fgsch Exp $

COMMENT=	"encoder/decoder tool for the Usenet yEnc encoding format"

DISTNAME=	yencode-0.46
CATEGORIES=	news

MASTER_SITES=	http://www.yencode.org/download/source/

HOMEPAGE=	http://www.yencode.org/

MODULES=        converters/libiconv

WANTLIB=	c intl

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=	--with-libiconv-prefix="${LOCALBASE}"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=	Yes

.include <bsd.port.mk>
