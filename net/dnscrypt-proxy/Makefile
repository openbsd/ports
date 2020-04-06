# $OpenBSD: Makefile,v 1.53 2020/04/06 18:42:57 bket Exp $

COMMENT =	flexible DNS proxy with support for encrypted DNS protocols

GH_ACCOUNT =	jedisct1
GH_PROJECT =	dnscrypt-proxy
GH_TAGNAME =	2.0.42

CATEGORIES =	net

HOMEPAGE =	https://dnscrypt.info/

MAINTAINER =	Nam Nguyen <namn@berkeley.edu>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread

MODULES =	lang/go
MODGO_TYPE =	bin

INSTDIR =	${PREFIX}/share/examples/dnscrypt-proxy

post-patch:
	${SUBST_CMD} ${WRKDIST}/dnscrypt-proxy/example-dnscrypt-proxy.toml

do-build:
	cd ${WRKSRC}/dnscrypt-proxy && ${MODGO_CMD} build

do-test:
	cd ${WRKSRC}/dnscrypt-proxy && ${MODGO_CMD} test

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dnscrypt-proxy/dnscrypt-proxy ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${INSTDIR}
	${INSTALL_DATA} ${WRKSRC}/dnscrypt-proxy/example-* ${INSTDIR}
	rm -f ${INSTDIR}/example-dnscrypt-proxy.toml.{beforesubst,orig}

.include <bsd.port.mk>
