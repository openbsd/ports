# $OpenBSD: Makefile,v 1.21 2012/08/18 12:41:38 ajacoutot Exp $

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

USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
