# $OpenBSD: Makefile.inc,v 1.6 2010/12/08 22:26:19 jeremy Exp $

VERSION ?=	1.0.2
CATEGORIES ?=	databases

HOMEPAGE ?=	http://www.datamapper.org/

# MIT
PERMIT_PACKAGE_CDROM ?= Yes
PERMIT_PACKAGE_FTP ?= Yes
PERMIT_DISTFILES_CDROM ?= Yes
PERMIT_DISTFILES_FTP ?= Yes

MODULES ?= lang/ruby

BUILD_DEPENDS ?= ${RUN_DEPENDS}

DM_REL_VER_SPEC ?= >=${VERSION},<1.1

CONFIGURE_STYLE ?= ruby gem

MODRUBY_REGRESS ?= rake rspec
