# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:18 espie Exp $

COMMENT=	dispatches messages to one or more outputs

MODULES=	cpan
DISTNAME=	Log-Dispatch-2.29
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Params-Validate

TEST_DEPENDS= devel/p5-File-Find-Rule

.include <bsd.port.mk>
