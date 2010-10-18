# $OpenBSD: Makefile,v 1.6 2010/10/18 18:36:48 espie Exp $

COMMENT=		simple, secure TCP proxy daemon

DISTNAME=		ipfreely-20050327
REVISION=		1
CATEGORIES=		net

HOMEPAGE=		http://ipfreely.sourceforge.net/

MAINTAINER=		Niall O Higgins <niallo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ipfreely/}

WRKDIST=		${WRKDIR}/ipfreely
WANTLIB=		c

USE_GROFF =	Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM}  ${WRKSRC}/ipfreely ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/ipfreely.cat8 ${PREFIX}/man/man8/ipfreely.0

.include <bsd.port.mk>
