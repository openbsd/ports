# $OpenBSD: Makefile,v 1.29 2019/07/14 00:39:40 naddy Exp $

COMMENT=	text search engine

DISTNAME=	glimpse-4.1
REVISION=	6
CATEGORIES=	textproc databases
HOMEPAGE=	http://webglimpse.net/

PERMIT_PACKAGE=	Yes

WANTLIB=		c 

MASTER_SITES=	http://ftp.gnome.org/mirror/archive/ftp.sunet.se/pub/vendor/sco/skunkware/osr5/fileutil/md5/src/ \
		http://ftp.icm.edu.pl/pub/unix/www/glimpse/

DISTFILES=	glimpse-4.1.src.tar.gz

CONFIGURE_STYLE=	gnu dest old

pre-configure:
	chmod ugo+x ${WRKSRC}/configure

CFLAGS+=-D__STRICT_ANSI__ -Dlog=mylog
NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/glimpse
	${INSTALL_DATA} ${WRKSRC}/COPYRIGHT ${PREFIX}/share/doc/glimpse
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/glimpse
	${INSTALL_PROGRAM} ${WRKSRC}/index/wgconvert ${PREFIX}/bin

.include <bsd.port.mk>
