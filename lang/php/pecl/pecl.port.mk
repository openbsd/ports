# $OpenBSD: pecl.port.mk,v 1.8 2018/04/26 15:08:56 sthen Exp $
# PHP PECL module

MODULES +=	lang/php

.if defined(MODPECL_V)
.  if ${MODPECL_V} == 5.6
FLAVORS = php56
FLAVOR = php56
.  elif ${MODPECL_V} == 7
FLAVORS = php70
FLAVOR = php70
.  endif
.else
FLAVORS ?= php56 php70
FLAVOR ?= php56
.endif

.if ${FLAVOR} == php56
MODPHP_VERSION = 5.6
MODPHP_FLAVOR = ,php56
MODPECL_56ONLY =
.elif ${FLAVOR} == php70
MODPHP_VERSION = 7.0
MODPHP_FLAVOR = ,php70
MODPECL_56ONLY = "@comment "
.endif

CATEGORIES +=	www

_PECL_PREFIX =	pecl${MODPHP_VERSION:S/.//}
PKGNAME ?=	${_PECL_PREFIX}-${DISTNAME:S/pecl-//:L}
FULLPKGNAME ?=	${PKGNAME}
_PECLMOD ?=	${DISTNAME:S/pecl-//:C/-[0-9].*//:L}

SUBST_VARS +=	MODPECL_56ONLY

.if !defined(MASTER_SITES)
MASTER_SITES ?=	https://pecl.php.net/get/
HOMEPAGE ?=	https://pecl.php.net/package/${_PECLMOD}
EXTRACT_SUFX ?=	.tgz
.endif

# XXX CONFIGURE_STYLE would be nice but it can't be set here
AUTOCONF_VERSION ?= 2.62
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
