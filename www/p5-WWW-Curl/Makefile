# $OpenBSD: Makefile,v 1.27 2017/11/21 00:13:04 naddy Exp $

COMMENT=	perl binding for curl

MODULES=	cpan
DISTNAME =	WWW-Curl-4.17
REVISION =	3
EPOCH=		0
CATEGORIES=	www net

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  c crypto curl iconv intl nghttp2 perl ssl z

LIB_DEPENDS=	devel/gettext \
		net/curl

post-configure:
	@perl -pi -e s,'t/\*.t','t/new/\*.t',g ${WRKSRC}/Makefile

.include <bsd.port.mk>
