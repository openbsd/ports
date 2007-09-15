# $OpenBSD: Makefile,v 1.20 2007/09/15 10:14:32 espie Exp $

COMMENT=	FREEZE / MELT compression program - often used in QNX

DISTNAME=	freeze-2.5
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.warwick.ac.uk/pub/compression/

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
	@perl -pi -e 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/Makefile
	@perl -pi -e 's|%%SYSCONFDIR%%|${SYSCONFDIR}|g' \
		${WRKSRC}/Makefile \
		${WRKSRC}/freeze.1 \
		${WRKSRC}/statist.1

.include <bsd.port.mk>
