# $OpenBSD: Makefile,v 1.4 2006/07/18 19:05:37 dhill Exp $

COMMENT=	"encoder/decoder tool for the Usenet yEnc encoding format"

DISTNAME=	yencode-0.46
PKGNAME=	${DISTNAME}p1
CATEGORIES=	news

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=yencode/}	

MODULES=        devel/gettext

WANTLIB=	c

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
