# $OpenBSD: Makefile,v 1.4 1999/08/01 15:44:34 brad Exp $

DISTNAME=	curl-5.9.1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.rhrz.uni-bonn.de/pub-koeln/net/inet/ \
		ftp://ftp.all.de/pub2/unix/network/www/curl/ \
		ftp://crydee.sai.msu.ru/zeus/unix/WWW/tools/mirror/ \
		ftp://ftp.win.or.jp/pub/network/www/misc/

MAINTAINER=	markus.friedl@informatik.uni-erlangen.de

BUILD_DEPENDS=	${PREFIX}/ssl/lib/libcrypto.a:${PORTSDIR}/security/SSLeay \
		${PREFIX}/ssl/lib/libssl.a:${PORTSDIR}/security/SSLeay

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --with-ssl

CURLDOCDIR=	${PREFIX}/share/doc/curl
CURLDOCFILES=	CHANGES INSTALL LEGAL MPL-1.0.txt README RESOURCES TODO

post-install:
	${INSTALL_MAN} $(WRKSRC)/curl.1 $(PREFIX)/man/man1
	${MKDIR} ${CURLDOCDIR}
	@set -e; for f in ${CURLDOCFILES}; do \
		${INSTALL_DATA} ${WRKSRC}/$${f} ${CURLDOCDIR}/; \
	done

.include <bsd.port.mk>
