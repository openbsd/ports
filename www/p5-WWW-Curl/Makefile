# $OpenBSD: Makefile,v 1.29 2019/07/12 20:50:58 sthen Exp $

COMMENT=	perl binding for curl

MODULES=	cpan
DISTNAME =	WWW-Curl-4.17
REVISION =	4
EPOCH=		0
CATEGORIES=	www net

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB =  c crypto curl iconv intl nghttp2 perl ssl z

LIB_DEPENDS=	devel/gettext,-runtime \
		net/curl

post-configure:
	@perl -pi -e s,'t/\*.t','t/new/\*.t',g ${WRKSRC}/Makefile

.include <bsd.port.mk>
