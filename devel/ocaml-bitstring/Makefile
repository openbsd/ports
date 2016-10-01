# $OpenBSD: Makefile,v 1.6 2016/10/01 11:54:15 naddy Exp $

COMMENT=		Erlang-style bitstrings for OCaml

DISTNAME=		ocaml-bitstring-2.0.4

REVISION=		2

CATEGORIES=		devel

HOMEPAGE=		https://bitstring.googlecode.com/

# LGPLv2+ with the OCaml linking exception (see COPYING.LIB)
# GPLv2+ for programs (see COPYING)
# examples and tests are public domain.
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		${MASTER_SITE_GOOGLECODE:=bitstring/}

MODULES=		lang/ocaml
BUILD_DEPENDS=		sysutils/findlib lang/ocaml-camlp4

.include <bsd.port.arch.mk>
.if ! ${PROPERTIES:Mocaml_native}
MAKE_FLAGS+=		NATIVE=
.endif

USE_GMAKE=		yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_prog_CAMLP4OF=camlp4of

.include <bsd.port.mk>
