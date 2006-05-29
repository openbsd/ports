# $OpenBSD: Makefile,v 1.7 2006/05/29 17:40:24 sturm Exp $

COMMENT=	"Exif Jpeg camera setting parser and thumbnail remover"

DISTNAME=	jhead-2.6
CATEGORIES=	graphics

HOMEPAGE=	http://www.sentex.net/~mwandel/jhead/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${HOMEPAGE}

NO_REGRESS=	Yes

.if ${MACHINE_ARCH} == "sparc64"
CFLAGS+=	-O0
.endif

do-build:
	cd ${WRKSRC} && \
		${CC} ${CFLAGS} -o jhead exif.c jhead.c \
		jpgfile.c makernote.c gpsinfo.c -lm

post-build:
	@gzip -d ${WRKSRC}/jhead.1.gz 

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/jhead ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/jhead.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jhead
	${INSTALL_DATA} ${WRKSRC}/usage.html ${PREFIX}/share/doc/jhead

.include <bsd.port.mk>
