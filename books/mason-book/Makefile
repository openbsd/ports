# $OpenBSD: Makefile,v 1.1.1.1 2003/05/29 23:52:29 avsm Exp $

COMMENT=	"book on embedding Perl in HTML with Mason"

# unversioned, so impose a version on it
V=		1.0
DISTNAME=	mason-book
PKGNAME=	${DISTNAME}-${V}
CATEGORIES=	books 

HOMEPAGE=	http://www.masonbook.com/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

MASTER_SITES=	${HOMEPAGE}book/

BUILD_DEPENDS=	::www/p5-HTML-Parser \
		::graphics/p5-Image-Size \
		::www/p5-URI \
		::textproc/p5-Pod-Simple 

# Open Publication License
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WRKDIST=	${WRKDIR}
INSTALL_LOC=	${PREFIX}/share/doc/mason-book
SUBST_VARS=	INSTALL_LOC
NO_REGRESS=	Yes

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
