# $OpenBSD: Makefile,v 1.10 2000/01/17 05:05:15 brad Exp $

DISTNAME=	curl-6.4
CATEGORIES=	net
MASTER_SITES=	http://curl.haxx.nu/stuff/ \
		http://www.fts.frontec.se/~dast/stuff/ \
		ftp://ftp.rhrz.uni-bonn.de/pub-koeln/net/inet/ \
		ftp://ftp.win.or.jp/pub/network/www/misc/ \
		ftp://crydee.sai.msu.ru/zeus/unix/WWW/tools/mirror/

MAINTAINER=	markus@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	CPPFLAGS="-I/usr/include/ssl"

MAKEFILES=	Makefile src/Makefile

post-configure:
.for x in ${MAKEFILES}
	@mv ${WRKSRC}/${x} ${WRKSRC}/${x}.pre_sed
	@sed -e s,@SHELL@,${SH}, ${WRKSRC}/${x}.pre_sed > ${WRKSRC}/${x}
.endfor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/curl
	cd ${WRKSRC}; ${INSTALL_DATA} CHANGES INSTALL LEGAL MPL-1.0.txt \
		README RESOURCES TODO ${PREFIX}/share/doc/curl

.include <bsd.port.mk>
