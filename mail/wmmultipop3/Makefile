# $OpenBSD: Makefile,v 1.4 2002/08/23 08:51:57 pvalchev Exp $

COMMENT=		"wm-dockapp; multiple pop3 mailbox checker"

DISTNAME=		wmMultiPop3-0.8
PKGNAME=		${DISTNAME:L}
CATEGORIES=		mail x11/windowmaker

HOMEPAGE=		http://bart.sm.luth.se/~dansun-8/software/wmMultiPop3/

MAINTAINER=		Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

USE_X11=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/${DISTNAME}
WRKSRC=			${WRKDIST}/wmmultipop3

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmmultipop3 ${PREFIX}/bin

.include <bsd.port.mk>
