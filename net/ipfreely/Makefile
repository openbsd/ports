# $OpenBSD: Makefile,v 1.8 2011/06/23 22:50:28 naddy Exp $

COMMENT=		simple, secure TCP proxy daemon

DISTNAME=		ipfreely-20050327
REVISION=		2
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

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM}  ${WRKSRC}/ipfreely ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/ipfreely.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
