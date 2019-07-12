# $OpenBSD: Makefile,v 1.10 2019/07/12 20:43:44 sthen Exp $

COMMENT=	book on embedding Perl in HTML with Mason
CATEGORIES=	books

# unversioned, so impose a version on it
V=		1.0
DISTNAME=	mason-book
PKGNAME=	${DISTNAME}-${V}
REVISION=	0
DIST_SUBDIR=	mason-book-${V}

HOMEPAGE=	http://www.masonbook.com/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

MASTER_SITES=	${HOMEPAGE}book/

BUILD_DEPENDS=	www/p5-HTML-Parser \
		graphics/p5-Image-Size \
		www/p5-URI

# Open Publication License
PERMIT_PACKAGE=	Yes

WRKDIST=	${WRKDIR}
INSTALL_LOC=	${PREFIX}/share/doc/mason-book
NO_TEST=	Yes
PKG_ARCH=	*

# pod files order important for TOC generation
BOOK_POD=	foreword preface ch1 ch2 ch3 ch4 ch5 ch6 ch7 \
		ch8 ch9 ch10 ch11 ch12 appendix-a appendix-b \
		appendix-c appendix-d glossary colophon copyright

do-build:
	@cp ${FILESDIR}/book_as_html.pl ${WRKBUILD}

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	@cd ${WRKBUILD} && perl ${WRKBUILD}/book_as_html.pl --toc \
		--target=${INSTALL_LOC} ${BOOK_POD:C/(.+)/\1.pod/g}

.include <bsd.port.mk>
