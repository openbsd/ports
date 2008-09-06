# $OpenBSD: Makefile,v 1.1.1.1 2008/09/06 09:52:57 simon Exp $

COMMENT =	easy-to-use self-cleaning scratch space

MODULES =	cpan
DISTNAME =	Directory-Scratch-0.14
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-File-Slurp \
		::devel/p5-Path-Class \
		::textproc/p5-String-Random
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
