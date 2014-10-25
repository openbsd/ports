# $OpenBSD: Makefile,v 1.1.1.1 2014/10/25 16:53:42 chrisz Exp $

COMMENT =	OCaml graph library
CATEGORIES =	devel

V =		1.8.5
DISTNAME =	ocamlgraph-${V}
PKGNAME =	ocaml-graph-${V}
MASTER_SITES =	http://ocamlgraph.lri.fr/download/

HOMEPAGE =	http://ocamlgraph.lri.fr/
MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

BUILD_DEPENDS =		sysutils/findlib x11/lablgtk2

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
