# $OpenBSD: Makefile,v 1.5 2010/11/20 19:56:50 espie Exp $

COMMENT =	GD plugin(s) for the Template Toolkit

MODULES =	cpan
DISTNAME =	Template-GD-2.66
REVISION =	0
CATEGORIES =	textproc graphics
USE_GROFF =	Yes

MAINTAINER =	Stephan A. Rickauer <stephan@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	textproc/p5-Template>=2.14 \
                graphics/p5-GD>=1.14

.include <bsd.port.mk>
