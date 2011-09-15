# $OpenBSD: Makefile,v 1.1.1.1 2011/09/15 15:50:23 sthen Exp $

COMMENT=	Objective Caml perl-compatible regexp library
CATEGORIES=	devel textproc

DISTNAME=	release-6.2.2
PKGNAME=	ocaml-pcre-6.2.2
WRKDIST=	${WRKDIR}/pcre-ocaml-${DISTNAME}
DIST_SUBDIR=	ocaml-pcre

HOMEPAGE=	http://ocaml.info/home/ocaml_sources.html

# GPLv2+
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/ocaml

MASTER_SITES=	http://hg.ocaml.info/release/pcre-ocaml/archive/

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
