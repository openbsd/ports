# $OpenBSD: Makefile.inc,v 1.9 2010/11/08 23:28:56 jeremy Exp $

VERSION ?=	1.0.15
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

CONFIGURE_STYLE ?= ruby gem
