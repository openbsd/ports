# $OpenBSD: Makefile,v 1.2 1999/04/25 18:37:43 brad Exp $

DISTNAME=	curl-5.5.1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.rhrz.uni-bonn.de/pub-koeln/net/inet/ \
		ftp://ftp.all.de/pub2/unix/network/www/curl/ \
		ftp://crydee.sai.msu.ru/zeus/unix/WWW/tools/mirror/ \
		ftp://ftp.win.or.jp/pub/network/www/misc/

MAINTAINER=	markus.friedl@informatik.uni-erlangen.de

BUILD_DEPENDS=	${PREFIX}/ssl/lib/libcrypto.a:${PORTSDIR}/security/SSLeay \
		${PREFIX}/ssl/lib/libssl.a:${PORTSDIR}/security/SSLeay

GNU_CONFIGURE=	yes
CONFIGURE_ENV+=	CPPFLAGS=-I${PREFIX}/ssl/include/ \
		LDFLAGS=-L${PREFIX}/ssl/lib/

CURLDOCDIR=	${PREFIX}/share/doc/curl
CURLDOCFILES=	CHANGES INSTALL LEGAL MPL-1.0.txt README RESOURCES TODO

post-install:
	${INSTALL_MAN} $(WRKSRC)/curl.1 $(PREFIX)/man/man1
	${MKDIR} ${CURLDOCDIR}
	@set -e; for f in ${CURLDOCFILES}; do \
		${INSTALL_DATA} ${WRKSRC}/$${f} ${CURLDOCDIR}/; \
	done

.include <bsd.port.mk>
