# $OpenBSD: Makefile,v 1.1.1.1 2003/07/17 22:07:06 naddy Exp $

COMMENT=	"Exif Jpeg camera setting parser and thumbnail remover"

DISTNAME=	jhead-2.0
CATEGORIES=	graphics

HOMEPAGE=	http://www.sentex.net/~mwandel/jhead/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
MAKE_FILE=	makefile

post-extract:
	@perl -pi -e 's,\015,,g' ${WRKSRC}/makefile ${WRKSRC}/*.[ch]

post-build:
	@gzip -d ${WRKSRC}/jhead.1.gz 

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/jhead ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/jhead.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jhead
	${INSTALL_DATA} ${WRKSRC}/usage.html ${PREFIX}/share/doc/jhead

.include <bsd.port.mk>
