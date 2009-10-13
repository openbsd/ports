# $OpenBSD: Makefile.inc,v 1.1.1.1 2009/10/13 15:09:16 pirofti Exp $

VERSION ?=	0.5.0.1
PKGNAME ?=	ruby-${DISTNAME}
CATEGORIES ?=	textproc

HOMEPAGE ?=	http://prawn.majesticseacreature.com/

MAINTAINER ?=	Claudio Jeker <claudio@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM ?= Yes
PERMIT_PACKAGE_FTP ?= Yes
PERMIT_DISTFILES_CDROM ?= Yes
PERMIT_DISTFILES_FTP ?= Yes

MASTER_SITES ?=	${MASTER_SITE_RUBYFORGE:=prawn/}

MODULES ?=	lang/ruby

BUILD_DEPENDS ?= ${RUN_DEPENDS}

CONFIGURE_STYLE ?= ruby gem

PKG_ARCH ?=	*
