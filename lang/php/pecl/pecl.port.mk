# $OpenBSD: pecl.port.mk,v 1.17 2020/04/21 20:38:32 sthen Exp $
# PHP PECL module

MODULES +=	lang/php

FLAVORS ?= php72 php73 php74
FLAVOR ?= php73

# MODPECL_DEFAULTV is used in PLISTs so that @pkgpath markers are only
# applied for packages built against the "ports default" version of PHP,
# this allows updates from old removed versions without additional per-
# flavour PFRAG files.
MODPECL_DEFAULTV ?= "@comment "
MODPHP_VERSION = ${FLAVOR:C/php([0-9])([0-9])/\1.\2/}

.if ${FLAVOR} == php73
MODPECL_DEFAULTV = ""
.endif

CATEGORIES +=	www

_PECL_PREFIX =	pecl${MODPHP_VERSION:S/.//}
PKGNAME ?=	${_PECL_PREFIX}-${DISTNAME:S/pecl-//:L}
FULLPKGNAME ?=	${PKGNAME}
_PECLMOD ?=	${DISTNAME:S/pecl-//:C/-[0-9].*//:L}

SUBST_VARS +=	MODPECL_DEFAULTV

.if !defined(MASTER_SITES)
MASTER_SITES ?=	https://pecl.php.net/get/
HOMEPAGE ?=	https://pecl.php.net/package/${_PECLMOD}
EXTRACT_SUFX ?=	.tgz
.endif

AUTOCONF_VERSION ?= 2.69
AUTOMAKE_VERSION ?= 1.9

LIBTOOL_FLAGS += --tag=disable-static

DESTDIRNAME ?=	INSTALL_ROOT

BUILD_DEPENDS += www/pear \
	${MODGNU_AUTOCONF_DEPENDS} \
	${MODGNU_AUTOMAKE_DEPENDS}

MODPHP_DO_SAMPLE ?= ${_PECLMOD}
MODPHP_DO_PHPIZE ?= Yes

.if !target(do-test) && ${NO_TEST:L:Mno}
TEST_TARGET = test
TEST_FLAGS =  NO_INTERACTION=1
USE_GMAKE ?=  Yes
.endif
