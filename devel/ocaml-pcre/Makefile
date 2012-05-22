# $OpenBSD: Makefile,v 1.2 2012/05/22 11:46:40 jasper Exp $

COMMENT=	Objective Caml perl-compatible regexp library
CATEGORIES=	devel textproc

V=		6.2.5
DISTNAME=	pcre-ocaml-$V
PKGNAME=	ocaml-pcre-$V

HOMEPAGE=	http://ocaml.info/home/ocaml_sources.html

# GPLv2+
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/ocaml

MASTER_SITES=	https://bitbucket.org/mmottl/pcre-ocaml/downloads/

RUN_DEPENDS=	sysutils/findlib
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	devel/pcre
WANTLIB=	pcre

NO_REGRESS=	Yes
USE_GMAKE=	Yes
MAKE_ENV+=	OCAMLFIND_INSTFLAGS="-ldconf ignore"

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/site-lib/pcre

.include <bsd.port.mk>

.if ${MODOCAML_NATIVE:L:Mno}
WRKSRC=		${WRKDIST}/lib
ALL_TARGET=	byte-code-library
INSTALL_TARGET=	libinstall-byte-code
.endif
