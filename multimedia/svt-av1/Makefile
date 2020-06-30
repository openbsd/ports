# $OpenBSD: Makefile,v 1.2 2020/06/30 07:11:30 ajacoutot Exp $

ONLY_FOR_ARCHS=	${LP64_ARCHS}

COMMENT=	scalable AV1 encoder/decoder

GH_ACCOUNT=	OpenVisualCloud
GH_PROJECT=	SVT-AV1
GH_TAGNAME=	v0.8.4
PKGNAME=	${DISTNAME:L}
CATEGORIES=	multimedia

SHARED_LIBS=	SvtAv1Dec	1.0 \
		SvtAv1Enc	1.0

HOMEPAGE=	https://github.com/OpenVisualCloud/SVT-AV1

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

.if ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS+=	devel/yasm
.endif

NO_TEST=	Yes

.include <bsd.port.mk>
