# $OpenBSD: Makefile,v 1.14 2019/05/13 12:25:49 cwen Exp $

COMMENT=	check for spelling errors in POD files

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-Spelling-0.22

CATEGORIES=	devel textproc

# Perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/p5-IPC-Run3 \
		textproc/aspell/core \
		textproc/p5-Pod-Spell

.include <bsd.port.mk>
