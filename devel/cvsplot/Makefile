COMMENT=		CVS-managed project analyzer

DISTNAME=		cvsplot-1.7.4
CATEGORIES=		devel
REVISION=		0

SITES=			${SITE_SOURCEFORGE:=cvsplot/}

HOMEPAGE=		https://cvsplot.sourceforge.net/

RUN_DEPENDS=		converters/p5-DateManip \
			textproc/p5-String-ShellQuote \
			math/gnuplot

# GPL
PERMIT_PACKAGE=	Yes

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/cvsplot.pl ${PREFIX}/bin/cvsplot

DOCS=			CHANGELOG LICENSE README

post-install:
	cd ${WRKSRC} && \
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cvsplot && \
	${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/cvsplot

.include <bsd.port.mk>
