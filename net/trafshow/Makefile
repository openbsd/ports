# New ports collection makefile for:	trafshow
# Version required:     3.0
# Date created:         28 Jan 1998
# Whom:                 mickey
#
# $OpenBSD: Makefile,v 1.8 2000/10/22 14:03:37 espie Exp $
#

DISTNAME=	trafshow-3.1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.nsk.su/pub/RinetSoft/
EXTRACT_SUFX=	.tgz

MAINTAINER=     Michael Shalayeff <mickey@openbsd.org>

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

GNU_CONFIGURE=	Yes
FAKE=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/trafshow
	${INSTALL_PROGRAM} ${WRKSRC}/trafshow ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/trafshow.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/.trafshow ${PREFIX}/lib/trafshow/trafshow.sample

.include <bsd.port.mk>
