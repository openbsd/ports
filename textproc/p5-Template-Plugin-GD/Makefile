# $OpenBSD: Makefile,v 1.7 2011/08/01 19:36:02 stephan Exp $

COMMENT =	GD plugin(s) for the Template Toolkit

MODULES =	cpan
DISTNAME =	Template-GD-2.66
REVISION =	2
CATEGORIES =	textproc graphics
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	textproc/p5-Template>=2.14 \
                graphics/p5-GD>=1.14

.include <bsd.port.mk>
