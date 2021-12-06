# $OpenBSD: Makefile.inc,v 1.17 2021/12/06 19:12:30 op Exp $

COMMENT=	practical and portable Scheme system

V=		5.3.0
DISTNAME=	chicken-${V}

MAINTAINER=	Timo Myyra <timo.myyra@bittivirhe.fi>

CATEGORIES=	lang

HOMEPAGE=	https://www.call-cc.org/
MASTER_SITES=	https://code.call-cc.org/releases/${V:C/^([0-9]+\.[0-9]+\.[0-9]+).*/\1/}/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread

USE_GMAKE=	Yes

MAKE_FLAGS+=	PLATFORM=bsd C_COMPILER="${CC}" CXX_COMPILER="${CXX}" \
		C_COMPILER_OPTIONS="-DHAVE_CHICKEN_CONFIG_H" \
		C_COMPILER_OPTIMIZATION_OPTIONS="${CFLAGS}"

MAKE_FILE=	GNUmakefile

FAKE_FLAGS=	PREFIX=${TRUEPREFIX}

BINARYVERSION=	11
SUBST_VARS+=	BINARYVERSION

# Based on param.h:MACHINE_STACK_GROWS_UP
pre-build:
.if ${MACHINE_ARCH} == "hppa"
	sed -i 's/C_STACK_GROWS_DOWNWARD 1/C_STACK_GROWS_DOWNWARD 0/g' "${WRKSRC}/Makefile.bsd"
.endif
