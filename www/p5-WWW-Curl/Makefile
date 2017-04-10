# $OpenBSD: Makefile,v 1.26 2017/04/10 19:59:58 sthen Exp $

COMMENT=	perl binding for curl

MODULES=	cpan devel/gettext
DISTNAME =	WWW-Curl-4.17
REVISION =	2
EPOCH=		0
CATEGORIES=	www net

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl nghttp2 perl ssl z

LIB_DEPENDS=	net/curl

post-configure:
	@perl -pi -e s,'t/\*.t','t/new/\*.t',g ${WRKSRC}/Makefile

.include <bsd.port.mk>
