# $OpenBSD: Makefile,v 1.6 2011/01/06 04:24:22 jeremy Exp $

COMMENT =	small, plain-text, DBMS written in Ruby

DISTNAME =	KirbyBase-2.6
PKGNAME =	${DISTNAME:L}
REVISION =      3
CATEGORIES =	databases

HOMEPAGE =	http://www.netpromi.com/kirbybase_ruby.html

MAINTAINER =	Clint Pachl <pachl@ecentryx.com>

# Ruby
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES	=		lang/ruby

CONFIGURE_STYLE =	ruby gem

do-regress:
	@cd ${WRKBUILD}/test && ${RUBY} ts_local.rb
	
.include <bsd.port.mk>
