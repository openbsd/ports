# $OpenBSD: Makefile,v 1.7 2014/09/01 13:03:39 chrisz Exp $

COMMENT =	the Ocamlnet internet protocol foundation library
CATEGORIES =	devel www mail

V =		3.7.5
DISTNAME =	ocamlnet-${V}
PKGNAME =	ocaml-net-${V}

MASTER_SITES =	http://download.camlcity.org/download/
HOMEPAGE =	http://projects.camlcity.org/projects/ocamlnet.html

MAINTAINER =	Christopher Zimmermann <madroach@zakweb.de>

# Mostly zlib/png, http server module is GPL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

BUILD_DEPENDS =		sysutils/findlib
WANTLIB =		c curses m pthread

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	-with-nethttpd -enable-pcre

RUN_DEPENDS +=		devel/ocaml-pcre
BUILD_DEPENDS +=	devel/ocaml-pcre

NO_TEST =	Yes
USE_GMAKE =	Yes

ALL_TARGET =	all

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=	opt
.endif

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/stublibs

EXAMPLEDIR =	${PREFIX}/share/examples/ocaml-net
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-net/html
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/ocaml-net/
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${PREFIX}/share/doc/ocaml-net/
	${INSTALL_DATA} \
	    ${WRKSRC}/doc/html-main/* \
	    ${PREFIX}/share/doc/ocaml-net/html/
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	cp -r ${WRKSRC}/examples/* ${EXAMPLEDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLEDIR}

.include <bsd.port.mk>
