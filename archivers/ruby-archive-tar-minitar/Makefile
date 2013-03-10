# $OpenBSD: Makefile,v 1.10 2013/03/10 22:28:05 espie Exp $

COMMENT =	command-line utility for POSIX tar(1) archive files

DISTNAME =	archive-tar-minitar-0.5.2
REVISION =	6
CATEGORIES =	archivers

HOMEPAGE =	http://ruwiki.rubyforge.org/

# GPLv2/Ruby license
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

do-test:
	@cd ${WRKBUILD}/tests && ${RUBY} testall.rb

.include <bsd.port.mk>
