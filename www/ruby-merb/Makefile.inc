# $OpenBSD: Makefile.inc,v 1.4 2009/01/31 12:40:06 bernd Exp $

VERSION ?=	1.0.8.1
PKGNAME ?=	ruby-${DISTNAME}
CATEGORIES ?=	www

HOMEPAGE ?=	http://www.merbivore.com/

MAINTAINER ?=	Bernd Ahlers <bernd@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM ?= Yes
PERMIT_PACKAGE_FTP ?= Yes
PERMIT_DISTFILES_CDROM ?= Yes
PERMIT_DISTFILES_FTP ?= Yes

MASTER_SITES ?=	${MASTER_SITE_RUBYFORGE:=merb/}

MODULES ?=	lang/ruby

BUILD_DEPENDS ?= ${RUN_DEPENDS}

CONFIGURE_STYLE ?= ruby gem

PKG_ARCH ?=	*
