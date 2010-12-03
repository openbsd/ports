# $OpenBSD: Makefile,v 1.4 2010/12/03 11:46:49 ajacoutot Exp $

COMMENT =	TT plugin for Text::Markdown

MODULES =	cpan
DISTNAME =	Template-Plugin-Markdown-0.02
REVISION =	0
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
