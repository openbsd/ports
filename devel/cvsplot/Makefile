# $OpenBSD: Makefile,v 1.4 2002/12/06 21:11:50 sturm Exp $

COMMENT=		"CVS-managed project analyzer"

DISTNAME=		cvsplot-1.6.2
CATEGORIES=		devel

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cvsplot/}

HOMEPAGE=		http://cvsplot.sourceforge.net/

MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

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

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/cvsplot.pl ${PREFIX}/bin/cvsplot

DOCS=			CHANGELOG LICENSE README

post-install:
	cd ${WRKSRC} && \
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cvsplot && \
	${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/cvsplot

.include <bsd.port.mk>
