# $OpenBSD: Makefile,v 1.1.1.1 2009/01/06 13:27:50 pirofti Exp $

COMMENT =	small, plain-text, DBMS written in Ruby

DISTNAME =	KirbyBase-2.6
PKGNAME =	ruby-${DISTNAME:L}
CATEGORIES =	databases

HOMEPAGE =	http://www.netpromi.com/kirbybase_ruby.html

MAINTAINER =	Clint Pachl <pachl@ecentryx.com>

# Ruby
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes


MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=kirbybase/}

MODULES	=		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

do-regress:
	@cd ${WRKBUILD}/test && ${RUBY} ts_local.rb
	
.include <bsd.port.mk>
