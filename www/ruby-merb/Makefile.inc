# $OpenBSD: Makefile.inc,v 1.8 2010/09/28 21:40:13 jeremy Exp $

VERSION ?=	1.0.15
PKGNAME ?=	ruby-${DISTNAME}
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

PKG_ARCH ?=	*
