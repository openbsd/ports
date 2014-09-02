# $OpenBSD: Makefile,v 1.1.1.1 2014/09/02 08:47:36 chrisz Exp $

COMMENT =	OCaml Preprocessor and Pretty-Printer
CATEGORIES =	lang

V =		4.02.0
GH_ACCOUNT =	ocaml
GH_PROJECT =	camlp4
GH_TAGNAME =	${V}
GH_COMMIT =	0bb620fad7005850beadbf3aafeeb17d28c8fecd
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
PKGNAME =	ocaml-${DISTNAME}

HOMEPAGE =	https://github.com/ocaml/camlp4/

MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

# LGPL >=2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

WANTLIB +=		c m

USE_GMAKE =		Yes

CONFIGURE_STYLE =	simple

MAKE_ENV =		DESTDIR=${WRKINST}

ALL_TARGET =		byte

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=		native
.endif

INSTALL_TARGET =	install install-META


pre-install:
	echo LIBDIR=${PREFIX}/lib/ocaml >>${WRKSRC}/config.sh
	echo BINDIR=${PREFIX}/bin >>${WRKSRC}/config.sh
	echo PKGDIR=${PREFIX}/lib/ocaml/camlp4 >>${WRKSRC}/config.sh


.include <bsd.port.mk>
