# $OpenBSD: Makefile,v 1.22 2013/03/11 11:42:41 espie Exp $

COMMENT=	text search engine

DISTNAME=	glimpse-4.1
REVISION =	1
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
USE_GROFF =	Yes
VMEM_WARNING=	Yes
NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/glimpse
	${INSTALL_DATA} ${WRKSRC}/COPYRIGHT ${PREFIX}/share/doc/glimpse
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/glimpse
	${INSTALL_PROGRAM} ${WRKSRC}/index/wgconvert ${PREFIX}/bin

.include <bsd.port.mk>
