# $OpenBSD: Makefile,v 1.10 2020/06/09 17:34:13 chrisz Exp $

COMMENT =	ocamlbuild
CATEGORIES =	devel

GH_ACCOUNT =	ocaml
GH_PROJECT =	ocamlbuild
GH_TAGNAME =	0.14.0
REVISION =	2

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

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
