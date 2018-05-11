# $OpenBSD: Makefile,v 1.1 2018/05/11 20:11:57 sthen Exp $

COMMENT =	low-level encryption extension for PHP

DISTNAME =	libsodium-1.0.7
PORTROACH =	limit:^1

DIST_SUBDIR =	pecl

CATEGORIES =	security

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread sodium

MODULES =	lang/php/pecl

# 1.x is actually for 7+ as well, and has a different namespace than
# 2.x. it _may_ be necessary to build a 7.0 version for this after PHP
# default is changed if there's anything which relies on the old version
# (sensible things would check or use the polyfill which also support
# the built-in libsodium support in 7.2+).
MODPECL_V =	5.6

LIB_DEPENDS =	security/libsodium

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
