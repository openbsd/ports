# $OpenBSD: Makefile,v 1.3 2014/11/06 17:13:40 sthen Exp $

COMMENT =	extended HTTP support

_PECLMOD =	http
V =		2.0.6
PKGNAME =	pecl-${_PECLMOD}-${V}
DISTNAME =	pecl_${_PECLMOD}-${V}
REVISION =	0

# PHP
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/php/pecl \
		devel/gettext

CONFIGURE_STYLE = gnu

WANTLIB +=	z crypto curl event idn ssl
RUN_DEPENDS +=	www/pecl-raphf \
		www/pecl-propro
BUILD_DEPENDS +=	${RUN_DEPENDS}
LIB_DEPENDS =	net/curl

.include <bsd.port.mk>
