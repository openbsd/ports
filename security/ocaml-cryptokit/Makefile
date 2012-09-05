# $OpenBSD: Makefile,v 1.3 2012/09/05 21:40:20 avsm Exp $

COMMENT=	cryptographic framework for the Objective-ML language
CATEGORIES=	security

DISTNAME=	cryptokit-1.6
REVISION=	2
PKGNAME=	ocaml-${DISTNAME}
MASTER_SITES=	http://forge.ocamlcore.org/frs/download.php/891/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://forge.ocamlcore.org/projects/cryptokit/

# GPL 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

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
