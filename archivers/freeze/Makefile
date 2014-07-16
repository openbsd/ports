# $OpenBSD: Makefile,v 1.26 2014/07/16 12:44:22 zhuk Exp $

COMMENT=	FREEZE / MELT compression program - often used in QNX

DISTNAME=	freeze-2.5
CATEGORIES=	archivers

MASTER_SITES=	http://www.arcane-labs.net/download/OpenBSD/

# None
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_FTP=	No

REVISION =	1
WANTLIB=	c

CONFIGURE_STYLE= gnu dest

MAKE_FLAGS=	CFLAGS="${CFLAGS} -I."
USE_GROFF =	Yes

NO_TEST=	Yes

post-configure:
		${SUBST_CMD} ${WRKSRC}/Makefile \
			${WRKSRC}/freeze.1 ${WRKSRC}/statist.1

.include <bsd.port.mk>
