# $OpenBSD: Makefile,v 1.17 2002/10/28 19:53:44 naddy Exp $

COMMENT=	"list tcp connections to/from the local machine"

DISTNAME=	tcplist-2.2
CATEGORIES=	sysutils net

MASTER_SITES=	ftp://ftp.cdf.toronto.edu/pub/jdd/tcplist/
EXTRACT_SUFX=	.shar

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::sysutils/lsof

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

INSTALL_TARGET=	install install.man

.include <bsd.port.mk>
