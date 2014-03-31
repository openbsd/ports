# $OpenBSD: Makefile,v 1.14 2014/03/31 15:14:51 robert Exp $

COMMENT=	dispatches messages to one or more outputs

MODULES=	cpan
DISTNAME=	Log-Dispatch-2.41
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Params-Validate

TEST_DEPENDS= devel/p5-File-Find-Rule

.include <bsd.port.mk>
