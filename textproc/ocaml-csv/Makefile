# $OpenBSD: Makefile,v 1.7 2016/06/23 19:23:54 krw Exp $

COMMENT=		pure OCaml library to read/write CSV files

DISTNAME=		csv-1.4.1
REVISION=		1
PKGNAME=		ocaml-${DISTNAME}

CATEGORIES=		textproc

HOMEPAGE=		https://forge.ocamlcore.org/projects/csv/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m

MASTER_SITES=		https://github.com/Chris00/ocaml-csv/releases/download/1.4.1/

MODULES=		lang/ocaml

CONFIGURE_STYLE=	oasis

BUILD_DEPENDS= devel/ocaml-ocamlbuild

.include <bsd.port.mk>
