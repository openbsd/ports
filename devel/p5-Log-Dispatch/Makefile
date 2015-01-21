# $OpenBSD: Makefile,v 1.16 2015/01/21 14:27:58 sthen Exp $

COMMENT=	dispatches messages to one or more outputs

MODULES=	cpan
DISTNAME=	Log-Dispatch-2.41
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Load \
		devel/p5-Dist-CheckConflicts \
		devel/p5-Params-Validate

TEST_DEPENDS= devel/p5-File-Find-Rule

.include <bsd.port.mk>
