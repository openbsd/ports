# $OpenBSD: Makefile,v 1.23 2013/11/25 14:16:23 sthen Exp $

COMMENT=	text search engine

DISTNAME=	glimpse-4.1
REVISION=	1
CATEGORIES=	textproc databases

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c 

MASTER_SITES=   ftp://ftp.cs.arizona.edu/glimpse/
DISTFILES=	glimpse-4.1.src.tar.gz

CONFIGURE_STYLE=	gnu dest old

pre-configure:
	chmod ugo+x ${WRKSRC}/configure

CFLAGS+=-D__STRICT_ANSI__ -Dlog=mylog
USE_GROFF=	Yes
NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/glimpse
	${INSTALL_DATA} ${WRKSRC}/COPYRIGHT ${PREFIX}/share/doc/glimpse
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/glimpse
	${INSTALL_PROGRAM} ${WRKSRC}/index/wgconvert ${PREFIX}/bin

.include <bsd.port.mk>
