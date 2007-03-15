# $OpenBSD: Makefile,v 1.8 2007/03/15 11:30:07 jolan Exp $

COMMENT=		"CVS-managed project analyzer"

DISTNAME=		cvsplot-1.6.5
PKGNAME=		${DISTNAME}p0
CATEGORIES=		devel

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cvsplot/}

HOMEPAGE=		http://cvsplot.sourceforge.net/

RUN_DEPENDS=		:p5-DateManip-*:converters/p5-DateManip \
			:p5-String-ShellQuote-*:textproc/p5-String-ShellQuote \
			:gnuplot-*:math/gnuplot

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/cvsplot.pl ${PREFIX}/bin/cvsplot

DOCS=			CHANGELOG LICENSE README

post-install:
	cd ${WRKSRC} && \
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cvsplot && \
	${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/cvsplot

.include <bsd.port.mk>
