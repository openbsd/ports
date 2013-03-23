# $OpenBSD: Makefile,v 1.10 2013/03/23 10:54:30 benoit Exp $

COMMENT=	check for spelling errors in POD files

MODULES=	cpan

DISTNAME =	Test-Spelling-0.17
CATEGORIES=	devel textproc

# Perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-Pod-Spell \
		textproc/aspell/core \
		devel/p5-IPC-Run3

.include <bsd.port.mk>
