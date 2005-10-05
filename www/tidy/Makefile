# $OpenBSD: Makefile,v 1.19 2005/10/05 09:39:20 bernd Exp $

COMMENT=	"validate, correct, and pretty-print HTML files"

TIDYDATE=	050921
DISTNAME=	tidy_src_${TIDYDATE}
PKGNAME=	tidy-${TIDYDATE}

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
		tidy_docs_050705${EXTRACT_SUFX}:0 \
		tidy_test_050919${EXTRACT_SUFX}:1

USE_GMAKE=	Yes

BUILD_DEPENDS=	::textproc/libxslt

WRKDIST=	${WRKDIR}/tidy
WRKBUILD=	${WRKDIST}/build/gmake

DOCDIR=		${PREFIX}/share/doc/tidy

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/htmldoc/*.{cfg,css,gif,html} ${DOCDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}/api
	${INSTALL_DATA} ${WRKDIST}/htmldoc/api/* ${DOCDIR}/api

do-regress:
	cd ${WRKSRC}/test && ${SH} testall.sh

.include <bsd.port.mk>
