# $OpenBSD: Makefile,v 1.9 2020/06/09 17:34:14 chrisz Exp $

V =		7.11
REVISION =	0
COMMENT =	OCaml Preprocessor and Pretty-Printer
DISTFILES =	camlp5-rel${V}{rel${V:S/.//}}${EXTRACT_SUFX}
PKGNAME =	ocaml-camlp5-${V}
CATEGORIES =	lang

HOMEPAGE =	https://camlp5.github.io/
MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c m

MASTER_SITES =	https://github.com/camlp5/camlp5/archive/

MODULES =	lang/ocaml

CONFIGURE_STYLE =	simple

ALL_TARGET =	world

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=	opt opt.opt
.endif

WRKDIST =	${WRKDIR}/camlp5-rel${V:S/.//}

.include <bsd.port.mk>
