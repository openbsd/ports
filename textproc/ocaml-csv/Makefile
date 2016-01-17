# $OpenBSD: Makefile,v 1.6 2016/01/17 17:29:10 sthen Exp $

COMMENT=		pure OCaml library to read/write CSV files

DISTNAME=		csv-1.4.1
REVISION=		0
PKGNAME=		ocaml-${DISTNAME}

CATEGORIES=		textproc

HOMEPAGE=		https://forge.ocamlcore.org/projects/csv/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m

MASTER_SITES=		https://github.com/Chris00/ocaml-csv/releases/download/1.4.1/

MODULES=		lang/ocaml

CONFIGURE_STYLE=	oasis

.include <bsd.port.mk>
