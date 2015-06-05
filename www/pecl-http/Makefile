# $OpenBSD: Makefile,v 1.4 2015/06/05 06:00:22 robert Exp $

COMMENT =	extended HTTP support

_PECLMOD =	http
V =		2.0.6
PKGNAME =	pecl-${_PECLMOD}-${V}
DISTNAME =	pecl_${_PECLMOD}-${V}
REVISION =	1

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
