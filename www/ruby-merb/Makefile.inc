# $OpenBSD: Makefile.inc,v 1.10 2010/12/08 22:13:24 jeremy Exp $

VERSION ?=	1.1.3
CATEGORIES ?=	www

HOMEPAGE ?=	http://www.merbivore.com/

MAINTAINER ?=	Mathieu Sauve-Frankel <msf@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM ?= Yes
PERMIT_PACKAGE_FTP ?= Yes
PERMIT_DISTFILES_CDROM ?= Yes
PERMIT_DISTFILES_FTP ?= Yes

MODULES ?=	lang/ruby

BUILD_DEPENDS ?= ${RUN_DEPENDS}
MERB_REL_VER_SPEC ?= >=1.1.3,<1.2

CONFIGURE_STYLE ?= ruby gem
