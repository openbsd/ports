# $OpenBSD: Makefile,v 1.16 2010/11/19 07:23:10 espie Exp $

BROKEN=			requires update due to ocaml 3.08

COMMENT=		proof assistant based on a typed lambda calculus

DISTNAME=		coq-7.3.1
REVISION=		0
CATEGORIES=		math
HOMEPAGE=		http://coq.inria.fr/

MAINTAINER=		Yozo Toda <yozo@v007.vaio.ne.jp>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses m pthread

MASTER_SITES=		ftp://ftp.inria.fr/INRIA/coq/V7.3.1/
MASTER_SITES0=		${MASTER_SITES:S@$@doc/@}
MASTER_SITES1=		http://coq.inria.fr/
MASTER_SITES2=		http://coq.inria.fr/ps/
MASTER_SITES3=		ftp://quatramaran.ens.fr/pub/espie/coq/
DISTFILES=		${DISTNAME}.tar.gz \
			doc-html-20040711.tar.gz:3 \
			Changes.html:0 \
			Reference-Manual-all.ps.gz:0 \
			library.tar.gz:1 \
			RecTutorial.v.ps:2
PATCHFILES=		patch-coq-7.3.1-ocaml-3.07

DIST_SUBDIR=		coq
EXTRACT_ONLY=		${DISTNAME}.tar.gz \
			doc-html-20040711.tar.gz \
			library.tar.gz  \

DESTDIRNAME=		COQINSTALLPREFIX

USE_GMAKE=		Yes
USE_GROFF =		Yes

MODULES=		lang/ocaml

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		-prefix ${PREFIX} \
			-emacslib ${PREFIX}/share/emacs/site-lisp \
			${MODOCAML_NATIVE:S/Yes/-opt/:S/No/-byteonly/}

ALL_TARGET=		world
REGRESS_TARGET=		check

COQ_DOCHTMLFILES=       Changes.html
COQ_DOCPSFILES=         RecTutorial.v.ps Reference-Manual-all.ps.gz

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coq/html/library
	@${INSTALL_DATA} ${WRKDIR}/coq-docs-html/* ${PREFIX}/share/doc/coq/html
	@${INSTALL_DATA} ${WRKDIR}/library/* ${PREFIX}/share/doc/coq/html/library
	@for ff in ${COQ_DOCHTMLFILES} ; do \
	  ${INSTALL_DATA} ${FULLDISTDIR}/$${ff} ${PREFIX}/share/doc/coq/html ; \
	done
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coq/ps
	@for ff in ${COQ_DOCPSFILES} ; do \
	  ${INSTALL_DATA} ${FULLDISTDIR}/$${ff} ${PREFIX}/share/doc/coq/ps ; \
	done

.include <bsd.port.mk>
