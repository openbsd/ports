# $OpenBSD: Makefile,v 1.12 2014/10/11 19:54:46 jeremy Exp $

COMMENT =	small, plain-text, DBMS written in Ruby

DISTNAME =	KirbyBase-2.6
PKGNAME =	${DISTNAME:L}
REVISION =      7
CATEGORIES =	databases

HOMEPAGE =	http://www.netpromi.com/kirbybase_ruby.html

MAINTAINER =	Clint Pachl <pachl@ecentryx.com>

# Ruby
PERMIT_PACKAGE_CDROM =		Yes

MODULES	=		lang/ruby

CONFIGURE_STYLE =	ruby gem

do-test:
	@cd ${WRKBUILD}/test && ${RUBY} ts_local.rb
	
.include <bsd.port.mk>
