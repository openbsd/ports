# $OpenBSD: Makefile,v 1.15 2014/03/31 15:21:55 jasper Exp $

COMMENT=	dispatches messages to one or more outputs

MODULES=	cpan
DISTNAME=	Log-Dispatch-2.41
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Load \
		devel/p5-Dist-CheckConflicts \
		devel/p5-Params-Validate

TEST_DEPENDS= devel/p5-File-Find-Rule

.include <bsd.port.mk>
