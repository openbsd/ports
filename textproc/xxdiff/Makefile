# $OpenBSD: Makefile,v 1.13 2002/10/16 13:23:41 naddy Exp $

COMMENT=	"graphical file comparator and merge tool"

DISTNAME=	xxdiff-2.9.1
CATEGORIES=	textproc x11
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=xxdiff/}

HOMEPAGE=	http://xxdiff.sourceforge.net/

MAINTAINER=	Dan Weeks <danimal@danimal.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=	:bison-*:devel/bison \
		:tmake->=1.8p1:devel/tmake
MODULES=	qt3

WRKDIST=	${WRKDIR}/${DISTNAME}/src

MAKE_ENV+=	UIC=${MODQT_UIC}

# For qsettings to write its setup
PORTHOME=	${WRKDIST}

NO_REGRESS=	Yes

do-configure:
	@cd ${WRKSRC} && tmake -t xxdiff.t xxdiff.pro > ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xxdiff ${PREFIX}/bin/xxdiff
	${INSTALL_MAN} ${WRKSRC}/xxdiff.1 ${PREFIX}/man/man1/xxdiff.1

.include <bsd.port.mk>
