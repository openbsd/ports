# $OpenBSD: Makefile,v 1.3 2019/03/04 12:51:15 chrisz Exp $

V =		7.07
COMMENT =	OCaml Preprocessor and Pretty-Printer
DISTFILES =	camlp5-rel${V}{rel${V:S/.//}}${EXTRACT_SUFX}
PKGNAME =	ocaml-camlp5-${V}
CATEGORIES =	lang

HOMEPAGE =	https://camlp5.github.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread

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
