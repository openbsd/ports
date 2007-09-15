# $OpenBSD: Makefile,v 1.19 2007/09/15 23:30:01 merdely Exp $
# $FreeBSD: Makefile,v 1.5 1999/03/09 00:16:14 jseger Exp $

COMMENT=	fast scatter/gather TCP port scanner

DISTNAME=	strobe-1.06
CATEGORIES=	security
MASTER_SITES=	ftp://ftp.u-aizu.ac.jp/pub/net/misc/win.or.jp/ \
		ftp://ftp.win.ne.jp/pub/network/misc/
EXTRACT_SUFX=	.tgz

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

WRKDIST=	${WRKDIR}/strobe
ALL_TARGET=	strobe

NO_REGRESS=	Yes

.include <bsd.port.mk>
