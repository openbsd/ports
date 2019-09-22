# $OpenBSD: Makefile,v 1.13 2019/09/22 07:46:40 ajacoutot Exp $

COMMENT=		decentralized service discovery and orchestration

GH_TAGNAME=		v0.8.4
GH_ACCOUNT=		hashicorp
GH_PROJECT=		serf
PKGNAME=		${GH_ACCOUNT}-${DISTNAME}
DIST_SUBDIR=		${GH_PROJECT}

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.serfdom.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=		lang/go

do-build:
	${MODGO_BUILD_CMD} ${ALL_TARGET}/cmd/serf

do-test:
	${MODGO_TEST_CMD} ${TEST_TARGET}/cmd/serf

.include <bsd.port.mk>
