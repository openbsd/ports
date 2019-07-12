# $OpenBSD: Makefile,v 1.11 2019/07/12 20:48:28 sthen Exp $

COMMENT=		simple, secure TCP proxy daemon

DISTNAME=		ipfreely-20050327
REVISION=		3
CATEGORIES=		net

HOMEPAGE=		http://ipfreely.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ipfreely/}

WRKDIST=		${WRKDIR}/ipfreely
WANTLIB=		c

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM}  ${WRKSRC}/ipfreely ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/ipfreely.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
