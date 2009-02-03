# $OpenBSD: Makefile,v 1.1.1.1 2009/02/03 12:29:32 pirofti Exp $

COMMENT =	command-line utility for POSIX tar(1) archive files

DISTNAME =	archive-tar-minitar-0.5.2
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	archivers

HOMEPAGE =	http://ruwiki.rubyforge.org/

# GPLv2/Ruby license
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=ruwiki/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH=		*

do-regress:
	@cd ${WRKBUILD}/tests && ${RUBY} testall.rb
.include <bsd.port.mk>
