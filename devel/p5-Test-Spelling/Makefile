# $OpenBSD: Makefile,v 1.16 2019/10/17 09:13:16 cwen Exp $

COMMENT=	check for spelling errors in POD files

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-Spelling-0.25

CATEGORIES=	devel textproc

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-IPC-Run3 \
		textproc/aspell/core \
		textproc/p5-Pod-Spell

.include <bsd.port.mk>
