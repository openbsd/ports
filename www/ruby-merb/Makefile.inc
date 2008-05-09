# $OpenBSD: Makefile.inc,v 1.2 2008/05/09 17:33:16 bernd Exp $

VERSION?=	0.9.3
PKGNAME?=	ruby-${DISTNAME}
CATEGORIES?=	www lang/ruby

HOMEPAGE?=	http://www.merbivore.com/

MAINTAINER?=	Bernd Ahlers <bernd@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

MASTER_SITES?=	${MASTER_SITE_RUBYFORGE:=merb/}

MODULES?=	lang/ruby

BUILD_DEPENDS?=	${RUN_DEPENDS}

CONFIGURE_STYLE?=ruby gem

PKG_ARCH?=	*
