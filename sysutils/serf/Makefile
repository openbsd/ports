# $OpenBSD: Makefile,v 1.5 2017/03/17 10:02:47 ajacoutot Exp $

COMMENT=		decentralized service discovery and orchestration

GH_TAGNAME=		v0.8.1
GH_ACCOUNT=		hashicorp
GH_PROJECT=		serf
PKGNAME=		${GH_ACCOUNT}-${DISTNAME}
DIST_SUBDIR=		${GH_PROJECT}

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.serfdom.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

do-build:
	${MODGO_BUILD_CMD} ${ALL_TARGET}/cmd/serf

do-test:
	${MODGO_TEST_CMD} ${TEST_TARGET}/cmd/serf

.include <bsd.port.mk>
