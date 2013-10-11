# $OpenBSD: Makefile,v 1.11 2013/10/11 23:51:18 naddy Exp $

COMMENT=		XHTML format for Text::Diff::Unified

MODULES=		cpan
DISTNAME=		Text-Diff-HTML-0.07
CATEGORIES=		textproc www

# perl
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		www/p5-HTML-Parser \
			textproc/p5-Text-Diff

TEST_DEPENDS=	devel/p5-Test-Pod

.include <bsd.port.mk>	
