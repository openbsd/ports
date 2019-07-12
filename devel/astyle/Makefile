# $OpenBSD: Makefile,v 1.20 2019/07/12 20:44:03 sthen Exp $

V=			3.1
COMMENT=		indenter and formatter of C/C++/Java source files
DISTNAME=		astyle_${V}_linux
PKGNAME=		astyle-${V}
CATEGORIES=		devel

HOMEPAGE=		http://astyle.sourceforge.net/
MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=astyle/}

# C++11
COMPILER=		base-clang ports-clang ports-gcc

USE_GMAKE=		Yes
ALL_TARGET=		release
MAKE_FLAGS=		CXX="${CXX}"

FAKE_FLAGS=		ipath="${DESTDIR}${PREFIX}/bin" \
			SYSCONF_PATH="${DESTDIR}${PREFIX}/share/doc/astyle"

WRKDIST=		${WRKDIR}/astyle
WRKSRC=			${WRKDIST}/build/clang

NO_TEST=		Yes

.include <bsd.port.mk>
