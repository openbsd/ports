# $OpenBSD: Makefile,v 1.3 2010/11/20 19:56:50 espie Exp $

COMMENT =	TT plugin for Text::Markdown

MODULES =	cpan
DISTNAME =	Template-Plugin-Markdown-0.02
CATEGORIES =	textproc
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	textproc/p5-Template \
		textproc/p5-Text-Markdown

.include <bsd.port.mk>
