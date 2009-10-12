# $OpenBSD: Makefile.inc,v 1.5 2009/10/12 15:34:12 pirofti Exp $

VERSION ?=	1.0.12
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
