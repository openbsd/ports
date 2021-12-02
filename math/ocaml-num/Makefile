# $OpenBSD: Makefile,v 1.9 2021/12/02 03:59:20 daniel Exp $

COMMENT =	library for arithmetic on big integers and rationals
CATEGORIES =	math

V =		1.4

GH_ACCOUNT =	ocaml
GH_PROJECT =	num
GH_TAGNAME =	v${V}
DISTNAME =	${GH_PROJECT}-${V}
PKGNAME =	ocaml-${DISTNAME}
HOMEPAGE =	https://github.com/ocaml/num/
REVISION =	0

MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>


# LGPL 2.1
PERMIT_PACKAGE =		Yes

MODULES =	lang/ocaml

BUILD_DEPENDS =	sysutils/findlib

USE_GMAKE =	Yes

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
MAKE_ENV =	NATIVE=true
.else
MAKE_ENV =	NATIVE=false
.endif

INSTALL_TARGET = findlib-install

.include <bsd.port.mk>
