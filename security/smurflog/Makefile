# $OpenBSD: Makefile,v 1.6 2000/10/22 14:03:47 espie Exp $

DISTNAME=	smurflog-2.1
CATEGORIES=	net security
MASTER_SITES=	http://www.nectar.com/distfiles/
#		http://www.sy.net/security/ \
#		http://www.bitchx.com/~humble/files/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

GNU_CONFIGURE=	Yes
FAKE=		Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/README.smurflog
	${INSTALL_PROGRAM} ${WRKSRC}/smurflog ${PREFIX}/sbin/smurflog

.include <bsd.port.mk>
