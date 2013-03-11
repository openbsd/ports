# $OpenBSD: Makefile,v 1.22 2013/03/11 11:41:28 espie Exp $

COMMENT=	fast scatter/gather TCP port scanner

DISTNAME=	strobe-1.06
CATEGORIES=	security
MASTER_SITES=	ftp://ftp.u-aizu.ac.jp/pub/net/misc/win.or.jp/ \
		ftp://ftp.win.ne.jp/pub/network/misc/
EXTRACT_SUFX=	.tgz

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

WRKDIST=	${WRKDIR}/strobe
ALL_TARGET=	strobe

USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
