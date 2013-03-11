# $OpenBSD: Makefile,v 1.10 2013/03/11 11:42:44 espie Exp $

COMMENT=		XHTML format for Text::Diff::Unified

MODULES=		cpan
DISTNAME=		Text-Diff-HTML-0.07
CATEGORIES=		textproc www
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		www/p5-HTML-Parser \
			textproc/p5-Text-Diff

TEST_DEPENDS=	devel/p5-Test-Pod

.include <bsd.port.mk>	
