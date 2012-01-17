# $OpenBSD: Makefile,v 1.24 2012/01/17 17:08:16 sthen Exp $

COMMENT=	list tcp connections to/from the local machine

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mlp64}
BROKEN=		not lp64 compatible
.endif

DISTNAME=	tcplist-2.2
REVISION=	2
CATEGORIES=	sysutils net

MASTER_SITES=	ftp://ftp.cdf.toronto.edu/pub/jdd/tcplist/
EXTRACT_SUFX=	.shar

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

RUN_DEPENDS=	sysutils/lsof

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tcplist ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcplist.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
