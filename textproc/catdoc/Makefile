# $OpenBSD: Makefile,v 1.8 2000/03/24 23:28:35 espie Exp $

DISTNAME=	catdoc-0.90b4
CATEGORIES=	textproc
NEED_VERSION=	 1.230

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.ice.ru/pub/vitus/

RUN_DEPENDS=	wish8.0::x11/tk80

GNU_CONFIGURE=	Yes

#do-install:
#	${INSTALL_PROGRAM} ${WRKSRC}/catdoc ${PREFIX}/bin
#	${INSTALL_SCRIPT} ${WRKSRC}/wordview ${PREFIX}/bin
#	${INSTALL_MAN} ${WRKSRC}/catdoc.1 ${PREFIX}/man/man1/catdoc.1

.include <bsd.port.mk>
