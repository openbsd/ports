# $OpenBSD: Makefile,v 1.1.1.1 2009/11/22 04:18:14 msf Exp $

COMMENT =	collection of general purpose, pure-Ruby extensions

DISTNAME =	facets-2.7.0
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	devel

# Ruby license
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=facets/}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
