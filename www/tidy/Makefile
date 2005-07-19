# $OpenBSD: Makefile,v 1.18 2005/07/19 08:10:10 aanriot Exp $

COMMENT=	"validate, correct, and pretty-print HTML files"

TIDYDATE=	050705
DISTNAME=	tidy_src_${TIDYDATE}
PKGNAME=	tidy-${TIDYDATE}

CATEGORIES=     www

MAINTAINER=	Eduardo Alvarenga <eduardo@thrx.org>

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
EXTRACT_SUFX=	.tgz
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		tidy_docs_${TIDYDATE}${EXTRACT_SUFX}:0

USE_GMAKE=	Yes
NO_REGRESS=	Yes

BUILD_DEPENDS=	::textproc/libxslt

WRKDIST=	${WRKDIR}/tidy
WRKBUILD=	${WRKDIST}/build/gmake

DOCDIR=		${PREFIX}/share/doc/tidy

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/htmldoc/*.{cfg,css,gif,html} ${DOCDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}/api
	${INSTALL_DATA} ${WRKDIST}/htmldoc/api/* ${DOCDIR}/api

.include <bsd.port.mk>
