# $OpenBSD: Makefile,v 1.12 2014/10/11 19:54:46 jeremy Exp $

COMMENT =	command-line utility for POSIX tar(1) archive files

DISTNAME =	archive-tar-minitar-0.5.2
REVISION =	8
CATEGORIES =	archivers

HOMEPAGE =	http://ruwiki.rubyforge.org/

# GPLv2/Ruby license
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

do-test:
	@cd ${WRKBUILD}/tests && ${RUBY} testall.rb

.include <bsd.port.mk>
