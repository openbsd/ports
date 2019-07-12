# $OpenBSD: Makefile,v 1.15 2019/07/12 21:02:18 sthen Exp $

COMMENT=	check for spelling errors in POD files

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-Spelling-0.22

CATEGORIES=	devel textproc

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-IPC-Run3 \
		textproc/aspell/core \
		textproc/p5-Pod-Spell

.include <bsd.port.mk>
