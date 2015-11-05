# $OpenBSD: Makefile,v 1.20 2015/11/05 19:08:57 jca Exp $

COMMENT=	visitor-style traversal of Perl data structures

MODULES=	cpan
DISTNAME=	Data-Visitor-0.27
CATEGORIES=	devel
REVISION=	0

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Data-Alias \
		devel/p5-Moose>=0.89 \
		devel/p5-Task-Weaken \
		devel/p5-Tie-ToObject \
		devel/p5-namespace-clean

TEST_DEPENDS=devel/p5-Test-MockObject>=1.04 \
		devel/p5-Test-use-ok

.include <bsd.port.mk>
