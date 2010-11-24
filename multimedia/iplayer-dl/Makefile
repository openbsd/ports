# $OpenBSD: Makefile,v 1.6 2010/11/24 21:35:15 jeremy Exp $

COMMENT =	allow UK users to download programmes from BBC iPlayer

DISTNAME =	iplayer-dl-0.1.17
REVISION =	0

CATEGORIES =	multimedia

HOMEPAGE =	http://po-ru.com/projects/iplayer-downloader/

# MIT
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

MASTER_SITES =		 http://po-ru.com/files/

MODULES =		 lang/ruby
CONFIGURE_STYLE =	 ruby setup

.include <bsd.port.mk>
