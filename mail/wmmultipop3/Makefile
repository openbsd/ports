# $OpenBSD: Makefile,v 1.1.1.1 2002/04/30 07:32:07 wilfried Exp $

COMMENT=		"wm-dockapp; multiple pop3 mailbox checker"

DISTNAME=		wmMultiPop3-0.7
PKGNAME=		${DISTNAME:L}
CATEGORIES=		mail x11/windowmaker
NEED_VERSION=		1.515

HOMEPAGE=		http://sumpan.campus.luth.se/software/wmmultipop3/

MAINTAINER=		Jolan Luff <jolan@encryptedemail.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

USE_X11=		Yes
#USE_GMAKE=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/${DISTNAME}
WRKSRC=			${WRKDIST}/wmmultipop3

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmmultipop3 ${PREFIX}/bin

.include <bsd.port.mk>
