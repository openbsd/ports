# $OpenBSD: Makefile,v 1.14 2003/02/02 16:37:56 sturm Exp $

COMMENT=	"graphical file comparator and merge tool"

DISTNAME=	xxdiff-2.9.1
PKGNAME=	${DISTNAME}p0
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
		:tmake->=1.10:devel/tmake
MODULES=	qt3
MODQT_MT=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}/src

MAKE_ENV+=	UIC=${MODQT_UIC}

# For qsettings to write its setup
PORTHOME=	${WRKDIST}

NO_REGRESS=	Yes

post-extract:
	@rm ${WRKSRC}/getopt.h
	@rm ${WRKSRC}/getopt.c
	@rm ${WRKSRC}/getopt1.c

do-configure:
	@cd ${WRKSRC} && ${LOCALBASE}/bin/tmake -t xxdiff.t xxdiff.pro > ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xxdiff ${PREFIX}/bin/xxdiff
	${INSTALL_MAN} ${WRKSRC}/xxdiff.1 ${PREFIX}/man/man1/xxdiff.1

.include <bsd.port.mk>
