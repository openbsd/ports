# $OpenBSD: Makefile,v 1.1.1.1 2004/05/21 17:21:54 jolan Exp $
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"perl binding for curl"
DISTNAME=	p5-WWW-Curl-20040519
CATEGORIES=	www net
MASTER_SITES=	http://mirrors.protection.cx/~jolan/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

HOMEPAGE=	http://curl.haxx.se/libcurl/perl/

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

LIB_DEPENDS=	curl.2.2::net/curl

CONFIGURE_STYLE=perl

MAKE_ENV+=	CURL_TEST_URL="http://www.openbsd.org/"

post-configure:
	@perl -pi -e s,'t/\*.t','t/new/\*.t',g ${WRKSRC}/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-WWW-Curl
	${INSTALL_SCRIPT} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/p5-WWW-Curl

.include <bsd.port.mk>
