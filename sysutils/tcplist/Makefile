# $OpenBSD: Makefile,v 1.21 2010/04/15 14:29:16 ajacoutot Exp $

COMMENT=	list tcp connections to/from the local machine

DISTNAME=	tcplist-2.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	sysutils net

MASTER_SITES=	ftp://ftp.cdf.toronto.edu/pub/jdd/tcplist/
EXTRACT_SUFX=	.shar

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

RUN_DEPENDS=	::sysutils/lsof

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tcplist ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcplist.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
