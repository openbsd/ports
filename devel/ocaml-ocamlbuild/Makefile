# $OpenBSD: Makefile,v 1.4 2019/03/04 12:51:13 chrisz Exp $

COMMENT =	ocamlbuild
CATEGORIES =	devel

V =		0.12.0
GH_ACCOUNT =	ocaml
GH_PROJECT =	ocamlbuild
GH_TAGNAME =	${V}
DISTNAME =	${GH_PROJECT}-${V}

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread

MODULES =		lang/ocaml

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
MAKE_ENV += OCAML_NATIVE=true
.else
MAKE_ENV += OCAML_NATIVE=false
.endif

# simply avoid stupid check that's missing DESTDIR
FAKE_FLAGS += CHECK_IF_PREINSTALLED=false

USE_GMAKE =		Yes

post-install:
	${INSTALL_DATA} \
		${WRKSRC}/man/ocamlbuild.1 \
		${PREFIX}/man/man1/

.include <bsd.port.mk>
