# $OpenBSD: Makefile,v 1.14 2001/10/28 13:05:49 espie Exp $

COMMENT=	"Unix shell embedded into Scheme"

DISTNAME=	scsh-0.5.3
CATEGORIES=	shells lang
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp-swiss.ai.mit.edu/pub/su/scsh/

PERMIT_PACKAGE_CDROM=	"required to notify authors"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"required to notify authors"
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest

ALL_TARGET=	enough

STRIP=

DOCS=	README RELEASE NEWS COPYING

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scsh
	mv ${PREFIX}/lib/scsh/doc/* ${PREFIX}/share/doc/scsh
	rmdir ${PREFIX}/lib/scsh/doc
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/scsh

.include <bsd.port.mk>
