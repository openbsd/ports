# $OpenBSD: Makefile,v 1.7 2015/10/30 15:51:30 sthen Exp $

COMMENT=	extended HTTP support

_PECLMOD=	http
V=		2.5.3
REVISION=	1
PKGNAME=	pecl-${_PECLMOD}-${V}
DISTNAME=	pecl_${_PECLMOD}-${V}

HOMEPAGE=	http://pecl.php.net/package/pecl_http

# PHP
PERMIT_PACKAGE_CDROM =	Yes

MODULES=	lang/php/pecl \
		devel/gettext

CONFIGURE_STYLE= gnu

WANTLIB+=	crypto curl event idn nghttp2 ssl z
RUN_DEPENDS+=	www/pecl-raphf \
		www/pecl-propro
BUILD_DEPENDS+=	${RUN_DEPENDS}
LIB_DEPENDS=	net/curl

.include <bsd.port.mk>
