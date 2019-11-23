# $OpenBSD: Makefile,v 1.33 2019/11/23 14:33:29 ajacoutot Exp $

COMMENT=		CLI for AWS ECS

GH_TAGNAME=		v1.18.0
GH_ACCOUNT=		aws
GH_PROJECT=		amazon-ecs-cli
PKGNAME=		${DISTNAME:S/amazon-//}

CATEGORIES=		sysutils

HOMEPAGE=		https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI.html

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=		lang/go

do-build:
	${MODGO_BUILD_CMD} ${ALL_TARGET}/ecs-cli

do-test:
	${MODGO_TEST_CMD} ${TEST_TARGET}/ecs-cli

.include <bsd.port.mk>
