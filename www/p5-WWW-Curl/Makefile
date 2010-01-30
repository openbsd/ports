# $OpenBSD: Makefile,v 1.10 2010/01/30 19:08:30 jolan Exp $

SHARED_ONLY=	Yes

COMMENT=	perl binding for curl

MODULES=	cpan
DISTNAME=	p5-WWW-Curl-20040519
PKGNAME=	${DISTNAME}p2
CATEGORIES=	www net
MASTER_SITES=	http://openbsddistfiles.org/jolan/

HOMEPAGE=	http://curl.haxx.se/libcurl/perl/

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		crypto idn ssl z 

LIB_DEPENDS=	curl.>=2.2::net/curl

MAKE_ENV+=	CURL_TEST_URL="http://www.openbsd.org/"

post-configure:
	@perl -pi -e s,'t/\*.t','t/new/\*.t',g ${WRKSRC}/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-WWW-Curl
	${INSTALL_SCRIPT} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/p5-WWW-Curl

.include <bsd.port.mk>
