# $OpenBSD: Makefile.inc,v 1.1 2011/11/17 15:15:26 jeremy Exp $

CATEGORIES ?=		devel

HOMEPAGE ?=		http://rspec.rubyforge.net/

# MIT
PERMIT_PACKAGE_CDROM ?=	Yes
PERMIT_PACKAGE_FTP ?=	Yes
PERMIT_DISTFILES_CDROM ?=	Yes
PERMIT_DISTFILES_FTP ?=	Yes

MODULES ?=		lang/ruby

CONFIGURE_STYLE ?=	ruby gem
