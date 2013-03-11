# $OpenBSD: Makefile,v 1.10 2013/03/11 11:42:45 espie Exp $

COMMENT=		module to diff based on word, not lines

MODULES=		cpan
DISTNAME=		Text-WordDiff-0.07
CATEGORIES=		textproc
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Algorithm-Diff \
			www/p5-HTML-Parser
TEST_DEPENDS=	devel/p5-Test-Pod

.include <bsd.port.mk>	
