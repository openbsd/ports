# $OpenBSD: Makefile,v 1.8 1999/11/30 00:23:28 brad Exp $

DISTNAME=	curl-6.2
CATEGORIES=	net
MASTER_SITES=	http://www.fts.frontec.se/~dast/stuff/ \
		ftp://ftp.rhrz.uni-bonn.de/pub-koeln/net/inet/ \
		ftp://ftp.win.or.jp/pub/network/www/misc/ \
		ftp://crydee.sai.msu.ru/zeus/unix/WWW/tools/mirror/

MAINTAINER=	markus@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	CPPFLAGS="-I/usr/include/ssl"

CURLDOCDIR=	${PREFIX}/share/doc/curl
CURLDOCFILES=	CHANGES INSTALL LEGAL MPL-1.0.txt README RESOURCES TODO
MAKEFILES=	Makefile src/Makefile

post-configure:
.for x in ${MAKEFILES}
	@mv ${WRKSRC}/${x} ${WRKSRC}/${x}.pre_sed
	@sed -e s,@SHELL@,${SH}, ${WRKSRC}/${x}.pre_sed > ${WRKSRC}/${x}
.endfor

post-install:
	@mkdir -p ${CURLDOCDIR}
	@set -e; for f in ${CURLDOCFILES}; do \
	 ${INSTALL_DATA} ${WRKSRC}/$${f} ${CURLDOCDIR}/; \
	done

.include <bsd.port.mk>
