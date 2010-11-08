# $OpenBSD: Makefile.inc,v 1.5 2010/11/08 23:28:53 jeremy Exp $

VERSION ?=	0.10.1
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

MODRUBY_REGRESS ?= rake rspec
