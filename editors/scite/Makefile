# $OpenBSD: Makefile,v 1.31 2019/07/14 00:39:35 naddy Exp $

COMMENT=		flexible and small GTK+ editor

VERSION=		4.0.3
DISTNAME=		scite${VERSION:S/.//g}
PKGNAME=		scite-${VERSION}
CATEGORIES=		editors x11

HOMEPAGE=		http://www.scintilla.org/SciTE.html

# old Python license
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c cairo gdk-3 gdk_pixbuf-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 pango-1.0 pangocairo-1.0 scintilla
WANTLIB += scintilla_lexers

MASTER_SITES=		http://www.scintilla.org/
EXTRACT_SUFX=		.tgz

# c++17
COMPILER=		base-clang ports-clang ports-gcc

LIB_DEPENDS=		x11/gtk+3 \
			editors/scintilla

USE_GMAKE=		Yes
NO_TEST=		Yes
WRKDIST=		${WRKDIR}/scite
WRKSRC=			${WRKDIST}/gtk
MAKE_FILE=		makefile
MAKE_ENV=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
			CC="${CC}" CFLAGS="${CFLAGS}" GTK3=1

post-extract:
	perl -pi -e 's|\x0d||' ${WRKSRC}/*.cxx ${WRKDIST}/src/*.cxx

pre-build:
	perl -pi -e 's|__DOCDIR__|${LOCALBASE}/share/doc/scite|' \
		${WRKDIST}/src/*.properties

.include <bsd.port.mk>
