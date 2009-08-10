# $OpenBSD: Makefile,v 1.25 2009/08/10 06:34:56 kili Exp $

COMMENT=	graphical file comparator and merge tool

DISTNAME=	xxdiff-3.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	textproc x11
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=xxdiff/}

HOMEPAGE=	http://xxdiff.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	X11 Xext c m png pthread pthread-stubs stdc++ xcb

BUILD_DEPENDS=	:bison-*:devel/bison \
		:tmake->=1.10:devel/tmake
MODULES=	x11/qt3
MODQT_MT=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}/src

MAKE_ENV+=	UIC=${MODQT_UIC}

# For qsettings to write its setup
PORTHOME=	${WRKDIST}

USE_GMAKE=	Yes
USE_X11=	Yes
NO_REGRESS=	Yes

post-extract:
	@rm ${WRKSRC}/getopt.h
	@rm ${WRKSRC}/getopt.c
	@rm ${WRKSRC}/getopt1.c

do-configure:
	@cd ${WRKSRC} && ${LOCALBASE}/bin/tmake -t xxdiff.t xxdiff.pro \
		> ${WRKSRC}/Makefile

do-install:
	cd ${WRKSRC}/../bin; \
	${INSTALL_PROGRAM} xxdiff ${PREFIX}/bin/xxdiff; \
	for f in xxdiff-cvs-diff xxdiff-encrypted xxdiff-find-grep-sed \
	    xxdiff-match; do \
		${INSTALL_SCRIPT} $$f ${PREFIX}/bin; \
	done
	${INSTALL_MAN} ${WRKSRC}/xxdiff.1 ${PREFIX}/man/man1/xxdiff.1

.include <bsd.port.mk>
