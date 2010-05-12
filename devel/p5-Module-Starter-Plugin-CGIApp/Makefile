# $OpenBSD: Makefile,v 1.1.1.1 2010/05/12 18:48:02 jamesw Exp $

COMMENT =		Template based module starter for CGI apps

MODULES =		cpan
DISTNAME =		Module-Starter-Plugin-CGIApp-0.30
CATEGORIES =		devel
CPAN_AUTHOR =		JALDHAR

MAINTAINER =		James Wright <jamesw@openbsd.org>


# Perl
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		::www/p5-HTML-Template \
			::devel/p5-Module-Starter
REGRESS_DEPENDS =	::devel/p5-File-Copy-Recursive \
			::devel/p5-File-DirCompare \
			::devel/p5-Test-MockTime
BUILD_DEPENDS =		${RUN_DEPENDS}
			


.include <bsd.port.mk>
