# $OpenBSD: Makefile,v 1.13 2017/08/01 22:53:11 bluhm Exp $

COMMENT=	check for spelling errors in POD files

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Test-Spelling-0.20
CATEGORIES=	devel textproc

# Perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-Pod-Spell \
		textproc/aspell/core \
		devel/p5-IPC-Run3

.include <bsd.port.mk>
