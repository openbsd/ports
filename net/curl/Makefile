# $OpenBSD: Makefile,v 1.12 2000/03/23 07:04:34 brad Exp $

DISTNAME=	curl-6.5.2
CATEGORIES=	net
MASTER_SITES=	http://curl.haxx.nu/stuff/ \
		http://www.fts.frontec.se/~dast/stuff/ \
		ftp://ftp.rhrz.uni-bonn.de/pub-koeln/net/inet/ \
		ftp://ftp.win.or.jp/pub/network/www/misc/ \
		ftp://crydee.sai.msu.ru/zeus/unix/WWW/tools/mirror/

NEED_VERSION=	1.213

MAINTAINER=	markus@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

GNU_CONFIGURE=	Yes
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
