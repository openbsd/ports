# $OpenBSD: Makefile,v 1.8 2016/03/29 11:27:00 naddy Exp $

COMMENT=	cryptographic framework for the Objective-ML language
CATEGORIES=	security

DISTNAME=	cryptokit-1.10
PKGNAME=	ocaml-${DISTNAME}
REVISION=	0
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
