# $OpenBSD: Makefile.inc,v 1.1 2014/03/09 20:17:01 jasper Exp $

COMMENT=	practical and portable Scheme system

V=		4.8.0.5
DISTNAME=	chicken-${V}

MAINTAINER=	Timo Myyra <timo.myyra@wickedbsd.net>

CATEGORIES=	lang

HOMEPAGE=	http://www.call-cc.org/
MASTER_SITES=	http://code.call-cc.org/releases/4.8.0/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread

USE_GMAKE=	Yes

MAKE_FLAGS+=	PLATFORM=bsd C_COMPILER="${CC}" CXX_COMPILER="${CXX}" \
		C_COMPILER_OPTIONS="-DHAVE_CHICKEN_CONFIG_H" \
		C_COMPILER_OPTIMIZATION_OPTIONS="${CFLAGS}"

MAKE_FILE=	GNUmakefile

FAKE_FLAGS=	PREFIX=${TRUEPREFIX}

pre-build:
.if ${MACHINE_ARCH} == "hppa"
	perl -pi -e 's/C_STACK_GROWS_DOWNWARD 1/C_STACK_GROWS_DOWNWARD 0/g' "${WRKSRC}/Makefile.bsd"
.endif

