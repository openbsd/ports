# $OpenBSD: Makefile,v 1.6 2007/01/16 17:52:07 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl binding for curl"

MODULES=	cpan
DISTNAME=	p5-WWW-Curl-20040519
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www net
MASTER_SITES=	http://mirrors.protection.cx/~jolan/

HOMEPAGE=	http://curl.haxx.se/libcurl/perl/

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		crypto ssl z 

LIB_DEPENDS=	curl.>=2.2::net/curl

MAKE_ENV+=	CURL_TEST_URL="http://www.openbsd.org/"

post-configure:
	@perl -pi -e s,'t/\*.t','t/new/\*.t',g ${WRKSRC}/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-WWW-Curl
	${INSTALL_SCRIPT} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/p5-WWW-Curl

.include <bsd.port.mk>
