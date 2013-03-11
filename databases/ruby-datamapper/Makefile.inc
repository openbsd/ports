# $OpenBSD: Makefile.inc,v 1.7 2013/03/11 02:52:08 espie Exp $

VERSION ?=	1.0.2
CATEGORIES ?=	databases

HOMEPAGE ?=	http://www.datamapper.org/

# MIT
PERMIT_PACKAGE_CDROM ?= Yes
PERMIT_PACKAGE_FTP ?= Yes
PERMIT_DISTFILES_FTP ?= Yes

MODULES ?= lang/ruby

BUILD_DEPENDS ?= ${RUN_DEPENDS}

DM_REL_VER_SPEC ?= >=${VERSION},<1.1

CONFIGURE_STYLE ?= ruby gem

MODRUBY_TEST ?= rake rspec
