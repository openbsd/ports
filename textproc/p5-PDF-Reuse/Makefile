# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:47 sthen Exp $

COMMENT=	perl module for manipulating PDF files

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	PDF-Reuse-0.39
CATEGORIES=	textproc
REVISION =	0

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS =		textproc/p5-Font-TTF \
			textproc/p5-Text-PDF

TEST_DEPENDS =		devel/p5-Test-Deep

.include <bsd.port.mk>
