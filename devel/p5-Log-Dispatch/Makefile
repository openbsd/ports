# $OpenBSD: Makefile,v 1.17 2015/09/04 06:38:41 benoit Exp $

COMMENT=	dispatches messages to one or more outputs

MODULES=	cpan
DISTNAME =	Log-Dispatch-2.50
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Module-Runtime \
		devel/p5-Dist-CheckConflicts \
		devel/p5-Params-Validate

TEST_DEPENDS= devel/p5-File-Find-Rule

.include <bsd.port.mk>
