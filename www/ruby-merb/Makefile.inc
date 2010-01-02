# $OpenBSD: Makefile.inc,v 1.7 2010/01/02 00:28:55 msf Exp $

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

MASTER_SITES ?=	${MASTER_SITE_GEMCUTTER}

MODULES ?=	lang/ruby

BUILD_DEPENDS ?= ${RUN_DEPENDS}

CONFIGURE_STYLE ?= ruby gem

PKG_ARCH ?=	*
