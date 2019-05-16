# $OpenBSD: Makefile,v 1.13 2019/05/16 15:38:07 cwen Exp $

COMMENT=		XHTML format for Text::Diff::Unified

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Text-Diff-HTML-0.08
CATEGORIES=		textproc www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		textproc/p5-Text-Diff>=0.11 \
			www/p5-HTML-Parser

CONFIGURE_STYLE=	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
