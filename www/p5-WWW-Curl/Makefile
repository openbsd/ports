# $OpenBSD: Makefile,v 1.14 2010/10/22 19:24:42 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	perl binding for curl

MODULES=	cpan
DISTNAME=	p5-WWW-Curl-20040519
PKGNAME=	${DISTNAME}
REVISION=	3
CATEGORIES=	www net
MASTER_SITES=	http://openbsddistfiles.com/jolan/
USE_GROFF =	Yes

HOMEPAGE=	http://curl.haxx.se/libcurl/perl/

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		crypto idn ssl z 

LIB_DEPENDS=	curl.>=2.2::net/curl

MAKE_ENV+=	CURL_TEST_URL="http://www.openbsd.org/"

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIR=	${PREFIX}/share/examples/p5-WWW-Curl

post-configure:
	@perl -pi -e s,'t/\*.t','t/new/\*.t',g ${WRKSRC}/Makefile

.include <bsd.port.mk>
