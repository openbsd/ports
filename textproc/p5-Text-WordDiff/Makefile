# $OpenBSD: Makefile,v 1.12 2016/03/20 19:57:10 naddy Exp $

COMMENT=		module to diff based on word, not lines

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		Text-WordDiff-0.08
CATEGORIES=		textproc

# perl
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Algorithm-Diff \
			www/p5-HTML-Parser
TEST_DEPENDS=	devel/p5-Test-Pod

.include <bsd.port.mk>	
