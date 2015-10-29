# $OpenBSD: Makefile,v 1.5 2015/10/29 21:24:05 sthen Exp $

COMMENT=	extended HTTP support

_PECLMOD=	http
V=		2.5.3
PKGNAME=	pecl-${_PECLMOD}-${V}
DISTNAME=	pecl_${_PECLMOD}-${V}

# PHP
PERMIT_PACKAGE_CDROM =	Yes

MODULES=	lang/php/pecl \
		devel/gettext

CONFIGURE_STYLE= gnu

WANTLIB+=	z crypto curl event idn ssl
RUN_DEPENDS+=	www/pecl-raphf \
		www/pecl-propro
BUILD_DEPENDS+=	${RUN_DEPENDS}
LIB_DEPENDS=	net/curl

.include <bsd.port.mk>
