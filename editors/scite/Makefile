COMMENT=		flexible and small GTK+ editor

VERSION=		5.5.0
DISTNAME=		scite${VERSION:S/.//g}
PKGNAME=		scite-${VERSION}
CATEGORIES=		editors x11

HOMEPAGE=		https://www.scintilla.org/SciTE.html

# old Python license
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c cairo gdk-3 gdk_pixbuf-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 m pango-1.0 pangocairo-1.0 scintilla

SITES=			https://www.scintilla.org/
EXTRACT_SUFX=		.tgz

# C++20
COMPILER=		base-clang ports-clang

LIB_DEPENDS=		x11/gtk+3 \
			editors/scintilla
RUN_DEPENDS +=		devel/xdg-utils \
			devel/desktop-file-utils

USE_GMAKE=		Yes
NO_TEST=		Yes
WRKDIST=		${WRKDIR}/scite
WRKSRC=			${WRKDIST}/gtk
MAKE_FILE=		makefile
MAKE_ENV=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
			CC="${CC}" CFLAGS="${CFLAGS}" GTK3=1

pre-build:
	cd ${WRKDIR}/lexilla/src && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}

.include <bsd.port.mk>
