# $OpenBSD: Makefile,v 1.7 1999/10/29 03:44:29 brad Exp $

DISTNAME=	curl-6.2
CATEGORIES=	net
MASTER_SITES=	http://www.fts.frontec.se/~dast/stuff/ \
		ftp://ftp.rhrz.uni-bonn.de/pub-koeln/net/inet/ \
		ftp://ftp.win.or.jp/pub/network/www/misc/ \
		ftp://crydee.sai.msu.ru/zeus/unix/WWW/tools/mirror/

MAINTAINER=	markus.friedl@informatik.uni-erlangen.de

USE_AUTOCONF=	yes
CONFIGURE_ENV=	CPPFLAGS="-I/usr/include/ssl"

CURLDOCDIR=	${PREFIX}/share/doc/curl
CURLDOCFILES=	CHANGES INSTALL LEGAL MPL-1.0.txt README RESOURCES TODO
MAKEFILES=	Makefile src/Makefile

post-configure:
.for x in ${MAKEFILES}
	@${MV} ${WRKSRC}/${x} ${WRKSRC}/${x}.pre_sed
	@${SED} -e s,@SHELL@,${SH}, \
	${WRKSRC}/${x}.pre_sed > ${WRKSRC}/${x}
.endfor

post-install:
	@${MKDIR} ${CURLDOCDIR}
	@set -e; for f in ${CURLDOCFILES}; do \
		${INSTALL_DATA} ${WRKSRC}/$${f} ${CURLDOCDIR}/; \
	done

.include <bsd.port.mk>
