# $OpenBSD: Makefile,v 1.2 2014/08/22 22:21:53 kili Exp $

COMMENT=		Erlang-style bitstrings for OCaml

DISTNAME=		ocaml-bitstring-2.0.4

REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://bitstring.googlecode.com/

# LGPLv2+ with the OCaml linking exception (see COPYING.LIB)
# GPLv2+ for programs (see COPYING)
# examples and tests are public domain.
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		https://bitstring.googlecode.com/files/

MODULES=		lang/ocaml
BUILD_DEPENDS=		sysutils/findlib

.include <bsd.port.arch.mk>
.if ! ${PROPERTIES:Mocaml_native}
MAKE_FLAGS+=		NATIVE=
.endif

USE_GMAKE=		yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_prog_CAMLP4OF=camlp4of

.include <bsd.port.mk>
