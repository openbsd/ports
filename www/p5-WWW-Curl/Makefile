# $OpenBSD: Makefile,v 1.19 2012/08/23 13:52:39 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	perl binding for curl

MODULES=	cpan devel/gettext
DISTNAME=	WWW-Curl-4.15
EPOCH=		0
REVISION=	0
CATEGORIES=	www net

HOMEPAGE=	http://curl.haxx.se/libcurl/perl/

# Your choice of MIT or MPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c crypto curl>=2.2 idn ssl z

LIB_DEPENDS=	net/curl

post-configure:
	@perl -pi -e s,'t/\*.t','t/new/\*.t',g ${WRKSRC}/Makefile

.include <bsd.port.mk>
