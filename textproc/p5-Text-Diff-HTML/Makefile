# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:50 sthen Exp $

COMMENT=		XHTML format for Text::Diff::Unified

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Text-Diff-HTML-0.08
CATEGORIES=		textproc www
REVISION=		0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		textproc/p5-Text-Diff>=0.11 \
			www/p5-HTML-Parser

CONFIGURE_STYLE=	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
