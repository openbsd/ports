# $OpenBSD: Makefile,v 1.2 2004/01/16 23:26:01 naddy Exp $

COMMENT=	"Exif Jpeg camera setting parser and thumbnail remover"

DISTNAME=	jhead-2.1
CATEGORIES=	graphics

HOMEPAGE=	http://www.sentex.net/~mwandel/jhead/

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

NO_REGRESS=	Yes

do-build:
	cd ${WRKSRC} && \
		${CC} ${CFLAGS} -o jhead exif.c jhead.c jpgfile.c -lm

post-build:
	@gzip -d ${WRKSRC}/jhead.1.gz 

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/jhead ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/jhead.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jhead
	${INSTALL_DATA} ${WRKSRC}/usage.html ${PREFIX}/share/doc/jhead

.include <bsd.port.mk>
