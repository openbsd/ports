# $OpenBSD: Makefile,v 1.10 2019/09/26 09:46:10 chrisz Exp $

COMMENT =	OCaml graph library
CATEGORIES =	devel

V =		1.8.8
REVISION =	1
DISTNAME =	ocamlgraph-${V}
PKGNAME =	ocaml-graph-${V}
MASTER_SITES =	http://ocamlgraph.lri.fr/download/

HOMEPAGE =	http://ocamlgraph.lri.fr/index.en.html
MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/ocaml

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender art_lgpl_2 atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gnomecanvas-2 gobject-2.0 gtk-x11-2.0 intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread z

RUN_DEPENDS =		x11/lablgtk2
BUILD_DEPENDS =		sysutils/findlib \
			${RUN_DEPENDS}

CONFIGURE_STYLE =	gnu

USE_GMAKE =		Yes

ALL_TARGET =		all META

post-install:
	${INSTALL_DATA} ${WRKSRC}/META ${PREFIX}/lib/ocaml/ocamlgraph/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ocaml-graph
	${INSTALL_DATA} \
		${WRKSRC}/examples/* \
		${PREFIX}/share/examples/ocaml-graph/

.include <bsd.port.mk>
