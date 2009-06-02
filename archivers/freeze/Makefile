# $OpenBSD: Makefile,v 1.21 2009/06/02 20:46:10 benoit Exp $

COMMENT=	FREEZE / MELT compression program - often used in QNX

DISTNAME=	freeze-2.5
PKGNAME=	${DISTNAME}p0
CATEGORIES=	archivers

MASTER_SITES=	http://ngsoftwareltd.com/freebsd/distfiles/ \
		http://www.arcane-labs.net/download/OpenBSD/

# None
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

WANTLIB=	c

CONFIGURE_STYLE= gnu dest

MAKE_FLAGS=	CFLAGS="${CFLAGS} -I."

NO_REGRESS=	Yes

post-configure:
		${SUBST_CMD} ${WRKSRC}/Makefile \
			${WRKSRC}/freeze.1 ${WRKSRC}/statist.1

.include <bsd.port.mk>
