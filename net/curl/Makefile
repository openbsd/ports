# $OpenBSD: Makefile,v 1.6 1999/09/01 17:12:58 brad Exp $

DISTNAME=	curl-5.11
CATEGORIES=	net
MASTER_SITES=	http://www.fts.frontec.se/~dast/stuff/ \
		ftp://ftp.rhrz.uni-bonn.de/pub-koeln/net/inet/ \
		ftp://ftp.win.or.jp/pub/network/www/misc/ \
		ftp://crydee.sai.msu.ru/zeus/unix/WWW/tools/mirror/

MAINTAINER=	markus.friedl@informatik.uni-erlangen.de

BUILD_DEPENDS=	${PREFIX}/ssl/lib/libcrypto.a:${PORTSDIR}/security/SSLeay \
		${PREFIX}/ssl/lib/libssl.a:${PORTSDIR}/security/SSLeay

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --with-ssl

CURLDOCDIR=	${PREFIX}/share/doc/curl
CURLDOCFILES=	CHANGES INSTALL LEGAL MPL-1.0.txt README RESOURCES TODO

post-install:
	@${MKDIR} ${CURLDOCDIR}
	@set -e; for f in ${CURLDOCFILES}; do \
		${INSTALL_DATA} ${WRKSRC}/$${f} ${CURLDOCDIR}/; \
	done

.include <bsd.port.mk>
