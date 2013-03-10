# $OpenBSD: Makefile,v 1.25 2013/03/10 22:28:04 espie Exp $

COMMENT=	FREEZE / MELT compression program - often used in QNX

DISTNAME=	freeze-2.5
CATEGORIES=	archivers

MASTER_SITES=	http://www.arcane-labs.net/download/OpenBSD/

# None
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_FTP=	No

REVISION =	0
WANTLIB=	c

CONFIGURE_STYLE= gnu dest

MAKE_FLAGS=	CFLAGS="${CFLAGS} -I."
USE_GROFF =	Yes

NO_TEST=	Yes

post-configure:
		${SUBST_CMD} ${WRKSRC}/Makefile \
			${WRKSRC}/freeze.1 ${WRKSRC}/statist.1

.include <bsd.port.mk>
