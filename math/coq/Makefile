# $OpenBSD: Makefile,v 1.3 2002/01/31 20:41:38 pvalchev Exp $

COMMENT=		"proof assistant based on a typed lambda calculus"

DISTNAME=		coq-7.0
CATEGORIES=		math
NEED_VERSION=		1.504
HOMEPAGE=		http://coq.inria.fr/

MAINTAINER=		Yozo Toda <yozo@v007.vaio.ne.jp>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.inria.fr/INRIA/coq/V7.0/
MASTER_SITES0=		${MASTER_SITES:S@$@doc/@}
DISTFILES=		${DISTNAME}.tar.gz \
			doc-html.tar.gz:0 \
			all-ps-docs.tar.gz:0
DIST_SUBDIR=		coq

BUILD_DEPENDS=		::lang/ocaml \
			::lang/camlp4

FAKE_FLAGS=		COQINSTALLPREFIX=${WRKINST}

USE_GMAKE=		Yes

CONFIGURE_STYLE=	simple
## add -opt option if there is ocamlc.opt.
CONFIGURE_ARGS=		-prefix ${PREFIX} \
			-emacslib ${PREFIX}/share/emacs/site-lisp ## -opt

ALL_TARGET=		world

COQ_DOCPSFILES=         Changes.ps Library.ps Tutorial.ps \
                        Reference-Manual-addendum.ps Reference-Manual-base.ps

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coq/html
	@${INSTALL_DATA} ${WRKDIR}/coq-docs-html/* ${PREFIX}/share/doc/coq/html
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coq/ps
	@for ff in ${COQ_DOCPSFILES} ; do \
	  ${INSTALL_DATA} ${WRKDIR}/$${ff} ${PREFIX}/share/doc/coq/ps ; \
	done
	@strip ${PREFIX}/bin/*

.include <bsd.port.mk>
