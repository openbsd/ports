# $OpenBSD: Makefile,v 1.19 2008/02/14 21:00:00 merdely Exp $

COMMENT=	text search engine

DISTNAME=	glimpse-4.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	textproc databases

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no fee
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

MASTER_SITES=   ftp://ftp.cs.arizona.edu/glimpse/
DISTFILES=	glimpse-4.1.src.tar.gz

CONFIGURE_STYLE=	gnu dest old

pre-configure:
	chmod ugo+x ${WRKSRC}/configure

CFLAGS+=-D__STRICT_ANSI__ -Dlog=mylog
VMEM_WARNING=	Yes
NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/glimpse
	${INSTALL_DATA} ${WRKSRC}/COPYRIGHT ${PREFIX}/share/doc/glimpse
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/glimpse
	${INSTALL_PROGRAM} ${WRKSRC}/index/wgconvert ${PREFIX}/bin

.include <bsd.port.mk>
