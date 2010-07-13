# $OpenBSD: Makefile,v 1.3 2010/07/13 20:14:23 sthen Exp $

COMMENT =	GD plugin(s) for the Template Toolkit

MODULES =	cpan
DISTNAME =	Template-GD-2.66
REVISION =	0
CATEGORIES =	textproc graphics

MAINTAINER =	Stephan A. Rickauer <stephan@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	:p5-Template->=2.14:textproc/p5-Template \
                :p5-GD->=1.14:graphics/p5-GD

.include <bsd.port.mk>
