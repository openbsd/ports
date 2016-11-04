# $OpenBSD: Makefile,v 1.25 2016/11/04 11:35:20 sthen Exp $

COMMENT=	perl binding for curl

MODULES=	cpan devel/gettext
DISTNAME =	WWW-Curl-4.17
REVISION =	1
EPOCH=		0
CATEGORIES=	www net

HOMEPAGE=	http://curl.haxx.se/libcurl/perl/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl nghttp2 perl ssl z

LIB_DEPENDS=	net/curl

post-configure:
	@perl -pi -e s,'t/\*.t','t/new/\*.t',g ${WRKSRC}/Makefile

.include <bsd.port.mk>
