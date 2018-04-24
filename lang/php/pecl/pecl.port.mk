# $OpenBSD: pecl.port.mk,v 1.7 2018/04/24 17:36:51 sthen Exp $
# PHP PECL module

MODULES +=	lang/php

CATEGORIES +=	www

PKGNAME ?=	pecl-${DISTNAME:S/pecl-//:S/_/-/:L}
_PECLMOD ?=	${DISTNAME:S/pecl-//:C/-[0-9].*//:L}

.if !defined(MASTER_SITES)
MASTER_SITES ?=	https://pecl.php.net/get/
HOMEPAGE ?=	http://pecl.php.net/package/${_PECLMOD}
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
