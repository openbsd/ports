# $OpenBSD: Makefile,v 1.13 2000/09/24 07:04:04 brad Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1998/08/10 00:31:40 steve Exp $

DISTNAME=	hexedit-1.1.0
CATEGORIES=	editors
NEED_VERSION=	1.330
MASTER_SITES=	http://pixel.linuxave.net/
EXTRACT_SUFX=	.src.tgz

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}'

WRKDIST=	${WRKDIR}/hexedit

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hexedit
	cd ${WRKSRC}; ${INSTALL_DATA} COPYING TODO Changes ${PREFIX}/share/doc/hexedit

.include <bsd.port.mk>
