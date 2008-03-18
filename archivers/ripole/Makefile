# $OpenBSD: Makefile,v 1.2 2008/03/18 19:14:28 jasper Exp $

COMMENT=		extract attachments from OLE2 data files
DISTNAME=		ripole-0.2.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		archivers

HOMEPAGE=		http://www.pldaniels.com/ripole/

MAINTAINER=		William Yodlowsky <bsd@openbsd.rutgers.edu>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE} \
			http://openbsd.rutgers.edu/

ALL_TARGET=		default
NO_REGRESS=		Yes

MAKE_ENV=		CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ripole ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ripole
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ripole

.include <bsd.port.mk>
