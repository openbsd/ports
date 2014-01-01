# $OpenBSD: Makefile,v 1.23 2014/01/01 20:46:28 naddy Exp $

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

NO_TEST=	Yes

.include <bsd.port.mk>
