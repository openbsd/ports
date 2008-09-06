# $OpenBSD: Makefile,v 1.1.1.1 2008/09/06 11:39:40 simon Exp $

COMMENT =	TT plugin for Text::Markdown

MODULES =	cpan
DISTNAME =	Template-Plugin-Markdown-0.02
CATEGORIES =	textproc

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::textproc/p5-Template \
		::textproc/p5-Text-Markdown

.include <bsd.port.mk>
