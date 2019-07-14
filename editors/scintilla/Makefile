# $OpenBSD: Makefile,v 1.29 2019/07/14 00:39:35 naddy Exp $

COMMENT=	source code editing component for GTK+

VERSION=	4.0.3
DISTNAME=	scintilla${VERSION:S/.//g}
PKGNAME=	scintilla-${VERSION}
CATEGORIES=	editors x11

SHARED_LIBS=	scintilla		11.0 \
		scintilla_lexers	11.0

HOMEPAGE=	http://www.scintilla.org/

# old Python license
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

PATCHORIG=	.orig.port

USE_GMAKE=	Yes
NO_TEST=	Yes

MAKE_FILE=	makefile
MAKE_ENV=	CXX='${CXX}' CXXFLAGS='${CXXFLAGS}' \
		CC='${CC}' GTK3=1

WANTLIB=	m ${COMPILER_LIBCXX}

# -std=gnu++17
COMPILER=	base-clang ports-clang ports-gcc

# Not LIB_DEPENDS as it's only shared libraries that don't link directly
# to gtk+3
BUILD_DEPENDS=	x11/gtk+3
RUN_DEPENDS=	x11/gtk+3

.for n v in ${SHARED_LIBS}
MAKE_ENV+=	LIB$n_VERSION=${LIB$n_VERSION}
.endfor

WRKDIST=	${WRKDIR}/scintilla
WRKSRC=		${WRKDIST}/gtk

post-extract:
	perl -pi -e 's|\x0d||' ${WRKDIST}/include/*.h ${WRKDIST}/gtk/*.cxx \
	    ${WRKDIST}/src/*.cxx

pre-build:
	perl -pi -e 's|/usr/local|${LOCALBASE}|' ${WRKSRC}/${MAKE_FILE}

.include <bsd.port.mk>
