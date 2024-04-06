COMMENT=	source code editing component for GTK+

VERSION=	5.4.3
DISTNAME=	scintilla${VERSION:S/.//g}
PKGNAME=	scintilla-${VERSION}
CATEGORIES=	editors x11

SHARED_LIBS=	scintilla		12.0

HOMEPAGE=	https://www.scintilla.org/

# old Python license
PERMIT_PACKAGE=	Yes

SITES=		${HOMEPAGE}
EXTRACT_SUFX=	.tgz

USE_GMAKE=	Yes
NO_TEST=	Yes

MAKE_FILE=	makefile
MAKE_ENV=	CXX='${CXX}' CXXFLAGS='${CXXFLAGS}' \
		CC='${CC}' GTK3=1

WANTLIB=	m ${COMPILER_LIBCXX}

# -std=c++17
COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	x11/gtk+3

WANTLIB += atk-1.0 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gtk-3 harfbuzz intl
WANTLIB += pango-1.0 pangocairo-1.0

.for n v in ${SHARED_LIBS}
MAKE_ENV+=	LIB$n_VERSION=${LIB$n_VERSION}
.endfor

WRKDIST=	${WRKDIR}/scintilla
WRKSRC=		${WRKDIST}/gtk

.include <bsd.port.mk>
