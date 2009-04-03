# $OpenBSD: Makefile,v 1.7 2009/04/03 21:30:50 sturm Exp $

COMMENT=	build system designed for scalability and portability
CATEGORIES=	devel

V=		0.9.8.5
VEXTRA=		3
DISTNAME=	omake-${V}-${VEXTRA}
PKGNAME=	omake-${V}pl${VEXTRA}p0
WRKDIST=	${WRKDIR}/omake-${V}
MASTER_SITES=	http://omake.metaprl.org/downloads/ \
		http://www.ocaml-programming.de/godi-backup/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://omake.metaprl.org/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/ocaml
NO_REGRESS=	Yes
DESTDIRNAME=	INSTALL_ROOT

MAKE_ENV=	MAN_ENABLED=Yes
WANTLIB=	curses m pthread readline ncurses c

DOC_DIR=	${PREFIX}/share/doc/omake
DOC_FILES=	LICENSE LICENSE.OMake doc/txt/omake-doc.txt doc/ps/omake-doc.ps \
		doc/ps/omake-doc.pdf CHANGELOG.txt ocamldep/LICENSE.ocamldep-omake \
		doc/html

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	cd ${WRKSRC} && cp -R ${DOC_FILES} ${DOC_DIR}

.include <bsd.port.mk>
