COMMENT=		indenter and formatter of C/C++/Java source files
DISTNAME=		astyle-3.5.2
EXTRACT_SUFX =		.tar.bz2
CATEGORIES=		devel
REVISION=		1

HOMEPAGE=		https://astyle.sourceforge.net/
MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

SITES=			${SITE_SOURCEFORGE:=astyle/}

# C++11
COMPILER=		base-clang ports-gcc

USE_GMAKE=		Yes
ALL_TARGET=		release
MAKE_FLAGS=		CXX="${CXX}"

FAKE_FLAGS=		ipath="${DESTDIR}${PREFIX}/bin" \
			SYSCONF_PATH="${DESTDIR}${PREFIX}/share/doc/astyle"

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
WRKSRC=			${WRKDIST}/build/clang
.else
WRKSRC=			${WRKDIST}/build/gcc
.endif

NO_TEST=		Yes

.include <bsd.port.mk>
