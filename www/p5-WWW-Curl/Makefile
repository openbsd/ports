# $OpenBSD: Makefile,v 1.18 2011/06/15 13:31:44 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	perl binding for curl

MODULES=	cpan
DISTNAME=	WWW-Curl-4.15
EPOCH=		0
CATEGORIES=	www net

HOMEPAGE=	http://curl.haxx.se/libcurl/perl/

# Your choice of MIT or MPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += crypto curl>=2.2 idn ssl z

LIB_DEPENDS=	net/curl

post-configure:
	@perl -pi -e s,'t/\*.t','t/new/\*.t',g ${WRKSRC}/Makefile

.include <bsd.port.mk>
