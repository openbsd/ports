# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:23 espie Exp $

COMMENT=	check for spelling errors in POD files

MODULES=	cpan

DISTNAME=	Test-Spelling-0.11
REVISION=	2
CATEGORIES=	devel textproc
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-Pod-Spell \
		textproc/aspell/core

.include <bsd.port.mk>
