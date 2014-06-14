# $OpenBSD: Makefile,v 1.21 2014/06/14 23:26:03 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	perl binding for curl

MODULES=	cpan devel/gettext
DISTNAME=	WWW-Curl-4.15
EPOCH=		0
REVISION=	1
CATEGORIES=	www net

HOMEPAGE=	http://curl.haxx.se/libcurl/perl/

# Your choice of MIT or MPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl>=2.2 idn ssl z

LIB_DEPENDS=	net/curl

post-configure:
	@perl -pi -e s,'t/\*.t','t/new/\*.t',g ${WRKSRC}/Makefile

.include <bsd.port.mk>
