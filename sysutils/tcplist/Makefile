# $OpenBSD: Makefile,v 1.18 2004/12/20 10:35:36 alek Exp $

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
WANTLIB=		c 

RUN_DEPENDS=	::sysutils/lsof

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

INSTALL_TARGET=	install install.man

.include <bsd.port.mk>
