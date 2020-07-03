# $OpenBSD: Makefile,v 1.3 2020/07/03 21:44:46 sthen Exp $

COMMENT =	colored pretty-print of Perl data structures and objects

DISTNAME =	Data-Printer-0.40
REVISION =	0

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Clone-PP \
			devel/p5-File-HomeDir>=0.91 \
			devel/p5-Package-Stash>=0.3 \
			devel/p5-Sort-Naturally

PKG_ARCH =		*

.include <bsd.port.mk>
