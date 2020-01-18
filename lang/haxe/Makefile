# $OpenBSD: Makefile,v 1.1.1.1 2020/01/18 00:31:05 thfr Exp $

COMMENT =	toolkit for the Haxe programming language

V =		4.0.5
DISTNAME =	haxe-${V}
CATEGORIES =	lang devel
HOMEPAGE =	https://haxe.org
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv2+ (Haxe compiler), MIT (standard lib and Neko virtual machine)
PERMIT_PACKAGE =	Yes

WANTLIB += c gc m neko pcre pthread z

MASTER_SITES =		https://thfr.info/distfiles/
EXTRACT_SUFX =		.tar.xz

MODULES =		lang/ocaml
BUILD_DEPENDS =		devel/ocaml-ocamlbuild \
			lang/nekovm \
			lang/ocaml-camlp5 \
			sysutils/findlib
LIB_DEPENDS =		devel/boehm-gc \
			devel/pcre \
			lang/nekovm

MAKE_FLAGS =		OCAMLPATH=${WRKSRC}/ocamldeps

USE_GMAKE =		Yes

# tests/README.md contains some instructions for TravisCI, AppVeyor, SauceLabs,
# unit, and cpp unit tests. Unit tests require graphical browser.
NO_TEST =		Yes

do-gen:
	${SUBST_CMD} ${WRKSRC}/src/compiler/main.ml

.include <bsd.port.mk>
