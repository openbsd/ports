# $OpenBSD: Makefile,v 1.2 2000/02/12 08:41:13 turan Exp $

DISTNAME=	smurflog-2.1
CATEGORIES=	net security
MASTER_SITES=	http://www.nectar.com/distfiles/
#		http://www.sy.net/security/ \
#		http://www.bitchx.com/~humble/files/

MAINTAINER=	todd@OpenBSD.ORG

LICENSE_TYPE=		NONE
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

GNU_CONFIGURE=	YES

do-install:
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/README.smurflog
	${INSTALL_PROGRAM} ${WRKSRC}/smurflog ${PREFIX}/sbin/smurflog

.include <bsd.port.mk>
