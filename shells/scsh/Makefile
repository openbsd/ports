# $OpenBSD: Makefile,v 1.15 2002/01/18 17:21:14 brad Exp $

COMMENT=	"Unix shell embedded into Scheme"

DISTNAME=	scsh-0.5.3
CATEGORIES=	shells lang
NEED_VERSION=	1.500
MASTER_SITES=	ftp://ftp-swiss.ai.mit.edu/pub/su/scsh/

PERMIT_PACKAGE_CDROM=	"required to notify authors"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"required to notify authors"
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ENV=	TMPDIR="/var/tmp"

ALL_TARGET=	enough

DOCS=	README RELEASE NEWS COPYING

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scsh
	@mv ${PREFIX}/lib/scsh/doc/* ${PREFIX}/share/doc/scsh
	@rm -rf ${PREFIX}/lib/scsh/doc
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/scsh

.include <bsd.port.mk>
