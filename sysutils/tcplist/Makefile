# $OpenBSD: Makefile,v 1.13 2001/05/06 03:59:10 lebel Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	"list tcp connections to/from the local machine"

DISTNAME=	tcplist-2.2
CATEGORIES=	sysutils net
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.cdf.toronto.edu/pub/jdd/tcplist/
EXTRACT_SUFX=	.shar

MAINTAINER=     ports@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	lsof::sysutils/lsof

WRKDIST=	${WRKDIR}

INSTALL_TARGET=	install install.man

.include <bsd.port.mk>
