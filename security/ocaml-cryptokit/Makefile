# $OpenBSD: Makefile,v 1.7 2015/08/30 16:07:09 avsm Exp $

COMMENT=	cryptographic framework for the Objective-ML language
CATEGORIES=	security

DISTNAME=	cryptokit-1.10
PKGNAME=	ocaml-${DISTNAME}
MASTER_SITES=	http://forge.ocamlcore.org/frs/download.php/1493/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://forge.ocamlcore.org/projects/cryptokit/

# GPL 
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	z

MODULES=	lang/ocaml

CONFIGURE_STYLE =	oasis

post-build:
	cp -R ${WRKDIST}/api-cryptokit.docdir ${WRKDIST}/cryptokit.mli

post-install:
	mv \
		${PREFIX}/share/doc/ocaml-cryptokit/cryptokit/* \
		${PREFIX}/share/doc/ocaml-cryptokit/
	rmdir ${PREFIX}/share/doc/ocaml-cryptokit/cryptokit


.include <bsd.port.mk>
