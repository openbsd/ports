# $OpenBSD: Makefile,v 1.17 2020/07/03 21:45:16 sthen Exp $

COMMENT=	check for spelling errors in POD files

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-Spelling-0.25
REVISION=	0

CATEGORIES=	devel textproc

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-IPC-Run3 \
		textproc/aspell/core \
		textproc/p5-Pod-Spell

.include <bsd.port.mk>
