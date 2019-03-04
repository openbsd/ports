# $OpenBSD: Makefile,v 1.17 2019/03/04 12:51:14 chrisz Exp $

COMMENT=	build system designed for scalability and portability
CATEGORIES=	devel

V=		0.10.3
DISTNAME=	omake-${V}
MASTER_SITES=	http://download.camlcity.org/download/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://projects.camlcity.org/projects/omake.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ocaml
NO_TEST=	Yes
DESTDIRNAME=	INSTALL_ROOT

BUILD_DEPENDS=	textproc/hevea

CONFIGURE_STYLE=simple

MAKE_ENV=	MAN_ENABLED=Yes
WANTLIB=	curses m pthread readline c

DOC_DIR=	${PREFIX}/share/doc/omake
DOC_FILES=	LICENSE LICENSE.OMake doc/txt/omake-doc.txt \
		doc/ps/omake-doc.pdf ChangeLog ChangeLog_old.txt doc/html

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	cd ${WRKSRC} && cp -R ${DOC_FILES} ${DOC_DIR}

.include <bsd.port.mk>
