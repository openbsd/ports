# $OpenBSD: Makefile,v 1.15 2001/10/28 13:05:49 espie Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	"list tcp connections to/from the local machine"

DISTNAME=	tcplist-2.2
CATEGORIES=	sysutils net
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.cdf.toronto.edu/pub/jdd/tcplist/
EXTRACT_SUFX=	.shar

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	lsof::sysutils/lsof

WRKDIST=	${WRKDIR}

INSTALL_TARGET=	install install.man

.include <bsd.port.mk>
