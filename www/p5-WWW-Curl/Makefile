# $OpenBSD: Makefile,v 1.24 2016/03/20 19:57:22 naddy Exp $

COMMENT=	perl binding for curl

MODULES=	cpan devel/gettext
DISTNAME =	WWW-Curl-4.17
REVISION =	0
EPOCH=		0
CATEGORIES=	www net

HOMEPAGE=	http://curl.haxx.se/libcurl/perl/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl idn nghttp2 perl ssl z

LIB_DEPENDS=	net/curl

post-configure:
	@perl -pi -e s,'t/\*.t','t/new/\*.t',g ${WRKSRC}/Makefile

.include <bsd.port.mk>
