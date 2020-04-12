# $OpenBSD: Makefile,v 1.2 2020/04/12 14:46:04 sthen Exp $

COMMENT =	lightweight GTK calendar applet

GH_ACCOUNT =	dmedvinsky
GH_PROJECT =	gsimplecal
GH_TAGNAME =	v2.1
REVISION =	0

CATEGORIES =	productivity x11
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.mooo.com>

# BSD
PERMIT_PACKAGE = Yes

WANTLIB +=	${COMPILER_LIBCXX}
WANTLIB +=	atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB +=	glib-2.0 gobject-2.0 gtk-3 intl m pango-1.0 pangocairo-1.0

LIB_DEPENDS =	x11/gtk+3

# C++
COMPILER =	base-clang ports-gcc base-gcc

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11
AUTORECONF =		./autogen.sh

MAKE_FLAGS =	CXXFLAGS="-std=c++98 ${CXXFLAGS}"

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/Unique.cpp

.include <bsd.port.mk>
