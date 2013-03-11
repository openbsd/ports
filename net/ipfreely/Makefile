# $OpenBSD: Makefile,v 1.9 2013/03/11 11:35:47 espie Exp $

COMMENT=		simple, secure TCP proxy daemon

DISTNAME=		ipfreely-20050327
REVISION=		2
CATEGORIES=		net

HOMEPAGE=		http://ipfreely.sourceforge.net/

MAINTAINER=		Niall O Higgins <niallo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ipfreely/}

WRKDIST=		${WRKDIR}/ipfreely
WANTLIB=		c

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM}  ${WRKSRC}/ipfreely ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/ipfreely.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
