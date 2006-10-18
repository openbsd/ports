# $OpenBSD: Makefile,v 1.20 2006/10/18 18:22:56 pvalchev Exp $

COMMENT=	"validate, correct, and pretty-print HTML files"

TIDYDATE=	051026
DISTNAME=	tidy_src_${TIDYDATE}
PKGNAME=	tidy-${TIDYDATE}
SHARED_LIBS=	tidy 1.0

CATEGORIES=     www

HOMEPAGE=	http://tidy.sourceforge.net/

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}src/ \
		${HOMEPAGE}src/old/
MASTER_SITES0=	${HOMEPAGE}docs/
MASTER_SITES1=	${HOMEPAGE}test/
EXTRACT_SUFX=	.tgz
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		tidy_docs_051020${EXTRACT_SUFX}:0 \
		tidy_test_051026${EXTRACT_SUFX}:1

USE_GMAKE=	Yes

BUILD_DEPENDS=	::textproc/libxslt

WRKDIST=	${WRKDIR}/tidy
WRKBUILD=	${WRKDIST}/build/gmake

DOCDIR=		${PREFIX}/share/doc/tidy

MAKE_FLAGS=	TIDY_MAJOR=${LIBtidy_VERSION:R} TIDY_MINOR=${LIBtidy_VERSION:E}
FAKE_FLAGS=	TIDY_MAJOR=${LIBtidy_VERSION:R} TIDY_MINOR=${LIBtidy_VERSION:E}

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/htmldoc/*.{cfg,css,gif,html} ${DOCDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}/api
	${INSTALL_DATA} ${WRKDIST}/htmldoc/api/* ${DOCDIR}/api

do-regress:
	cd ${WRKSRC}/test && ${SH} testall.sh

.include <bsd.port.mk>
