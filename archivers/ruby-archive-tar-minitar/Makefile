# $OpenBSD: Makefile,v 1.6 2011/01/06 04:24:22 jeremy Exp $

COMMENT =	command-line utility for POSIX tar(1) archive files

DISTNAME =	archive-tar-minitar-0.5.2
REVISION =	3
CATEGORIES =	archivers

HOMEPAGE =	http://ruwiki.rubyforge.org/

# GPLv2/Ruby license
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

do-regress:
	@cd ${WRKBUILD}/tests && ${RUBY} testall.rb

.include <bsd.port.mk>
