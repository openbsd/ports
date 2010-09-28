# $OpenBSD: Makefile.inc,v 1.4 2010/09/28 20:12:16 jeremy Exp $

VERSION ?=	0.10.1
PKGNAME ?=	ruby-${DISTNAME}
CATEGORIES ?=	databases

HOMEPAGE ?=	http://www.datamapper.org/

# MIT
PERMIT_PACKAGE_CDROM ?= Yes
PERMIT_PACKAGE_FTP ?= Yes
PERMIT_DISTFILES_CDROM ?= Yes
PERMIT_DISTFILES_FTP ?= Yes

MODULES ?= lang/ruby

BUILD_DEPENDS ?= ${RUN_DEPENDS}

CONFIGURE_STYLE ?= ruby gem

PKG_ARCH ?=	*

MODRUBY_REGRESS ?= rake rspec
