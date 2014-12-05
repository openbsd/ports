# $OpenBSD: Makefile,v 1.11 2014/12/05 07:23:40 benoit Exp $

COMMENT=		module to diff based on word, not lines

MODULES=		cpan
DISTNAME =		Text-WordDiff-0.08
CATEGORIES=		textproc

# perl
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Algorithm-Diff \
			www/p5-HTML-Parser
TEST_DEPENDS=	devel/p5-Test-Pod

.include <bsd.port.mk>	
