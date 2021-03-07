# $OpenBSD: Makefile,v 1.18 2021/03/07 23:24:36 afresh1 Exp $

COMMENT=	check for spelling errors in POD files

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-Spelling-0.25
REVISION=	1

CATEGORIES=	devel textproc

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-IPC-Run3 \
		textproc/aspell/core \
		textproc/p5-Pod-Parser \
		textproc/p5-Pod-Spell

.include <bsd.port.mk>
