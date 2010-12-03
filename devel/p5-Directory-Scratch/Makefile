# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:30 ajacoutot Exp $

COMMENT =	easy-to-use self-cleaning scratch space

MODULES =	cpan
DISTNAME =	Directory-Scratch-0.14
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	devel/p5-File-Slurp \
		devel/p5-Path-Class \
		textproc/p5-String-Random
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
