# $OpenBSD: Makefile,v 1.2 2002/10/25 22:37:52 naddy Exp $

COMMENT=		"CVS-managed project analyzer"

DISTNAME=		cvsplot-1.6.1
CATEGORIES=		devel

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cvsplot/}

HOMEPAGE=		http://cvsplot.sourceforge.net/

MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

RUN_DEPENDS=     	::converters/p5-DateManip

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
