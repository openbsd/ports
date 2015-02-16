# $OpenBSD: Makefile,v 1.10 2015/02/16 22:57:11 naddy Exp $

COMMENT=	encoder/decoder tool for the Usenet yEnc encoding format

DISTNAME=	yencode-0.46
REVISION=	1
CATEGORIES=	news

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=yencode/}

MODULES=        devel/gettext

WANTLIB=	c

# GPL
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=	--with-libiconv-prefix="${LOCALBASE}"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=	Yes

.include <bsd.port.mk>
