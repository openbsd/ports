# $OpenBSD: Makefile,v 1.22 2014/11/24 13:07:38 benoit Exp $

SHARED_ONLY=	Yes

COMMENT=	perl binding for curl

MODULES=	cpan devel/gettext
DISTNAME =	WWW-Curl-4.17
EPOCH=		0
CATEGORIES=	www net

HOMEPAGE=	http://curl.haxx.se/libcurl/perl/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl>=2.2 idn ssl z

LIB_DEPENDS=	net/curl

post-configure:
	@perl -pi -e s,'t/\*.t','t/new/\*.t',g ${WRKSRC}/Makefile

.include <bsd.port.mk>
