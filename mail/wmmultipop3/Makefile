# $OpenBSD: Makefile,v 1.2 2002/06/07 18:47:43 wilfried Exp $

COMMENT=		"wm-dockapp; multiple pop3 mailbox checker"

DISTNAME=		wmMultiPop3-0.7
PKGNAME=		${DISTNAME:L}
CATEGORIES=		mail x11/windowmaker
NEED_VERSION=		1.515

HOMEPAGE=		http://sumpan.campus.luth.se/software/wmmultipop3/

MAINTAINER=		Jolan Luff <jolan@enteract.com>

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
