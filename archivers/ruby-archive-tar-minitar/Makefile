# $OpenBSD: Makefile,v 1.8 2011/09/16 08:26:10 espie Exp $

COMMENT =	command-line utility for POSIX tar(1) archive files

DISTNAME =	archive-tar-minitar-0.5.2
REVISION =	5
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
