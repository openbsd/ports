# $OpenBSD: Makefile,v 1.11 2002/05/14 12:07:11 naddy Exp $

COMMENT=	"graphical file comparator and merge tool"

DISTNAME=	xxdiff-2.4
CATEGORIES=	textproc x11
NEED_VERSION=	1.504
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=xxdiff/}

HOMEPAGE=	http://xxdiff.sourceforge.net/

MAINTAINER=	Dan Weeks <danimal@danimal.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=	::devel/bison ::devel/tmake

WRKDIST=	${WRKDIR}/${DISTNAME}/src

NO_REGRESS=	Yes

do-configure:
	@cd ${WRKSRC} && tmake xxdiff.pro > ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xxdiff ${PREFIX}/bin/xxdiff
	${INSTALL_MAN} ${WRKSRC}/xxdiff.1 ${PREFIX}/man/man1/xxdiff.1

.include <bsd.port.mk>
