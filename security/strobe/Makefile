# $OpenBSD: Makefile,v 1.15 2002/03/21 21:25:52 espie Exp $
# $FreeBSD: Makefile,v 1.5 1999/03/09 00:16:14 jseger Exp $

COMMENT=	"fast scatter/gather TCP port scanner"

DISTNAME=	strobe-1.06
CATEGORIES=	security
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.u-aizu.ac.jp/pub/net/misc/win.or.jp/ \
		ftp://ftp.win.ne.jp/pub/network/misc/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Brad Smith <brad@openbsd.org>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/strobe
ALL_TARGET=	strobe

.include <bsd.port.mk>
