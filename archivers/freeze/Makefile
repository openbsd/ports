# $OpenBSD: Makefile,v 1.27 2014/07/17 08:29:04 zhuk Exp $

COMMENT=	FREEZE / MELT compression program - often used in QNX

DISTNAME=	freeze-2.5
CATEGORIES=	archivers

MASTER_SITES=	http://www.arcane-labs.net/download/OpenBSD/

# None
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_FTP=	No

REVISION =	2
WANTLIB=	c

CONFIGURE_STYLE= gnu dest

MAKE_FLAGS=	CFLAGS="${CFLAGS} -I."

NO_TEST=	Yes

# melt(1) is commented out due to conflict with the one from
# multimedia/mlt. It's just a synonim for unfreeze(1) anyway.

post-configure:
		${SUBST_CMD} ${WRKSRC}/Makefile \
			${WRKSRC}/freeze.1 ${WRKSRC}/statist.1

.include <bsd.port.mk>
