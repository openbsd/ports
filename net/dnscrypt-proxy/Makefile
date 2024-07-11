COMMENT =	flexible DNS proxy with support for encrypted DNS protocols

GH_ACCOUNT =	jedisct1
GH_PROJECT =	dnscrypt-proxy
GH_TAGNAME =	2.1.5
REVISION =	2

CATEGORIES =	net

HOMEPAGE =	https://dnscrypt.info/

MAINTAINER =	Nam Nguyen <namn@openbsd.org>
# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread

MODULES =	lang/go
MODGO_TYPE =	bin

INSTDIR =	${PREFIX}/share/examples/dnscrypt-proxy

pre-configure:
	sed -i "s;cache_file = '\(.*\)\.md';cache_file =\
		'${LOCALSTATEDIR}/dnscrypt-proxy/\1.md';g" \
		${MODGO_SUBDIR}/dnscrypt-proxy/example-dnscrypt-proxy.toml

do-build:
	cd ${WRKSRC}/dnscrypt-proxy && ${MODGO_CMD} build ${MODGO_FLAGS}

do-test:
	cd ${WRKSRC}/dnscrypt-proxy && ${MODGO_CMD} test

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dnscrypt-proxy/dnscrypt-proxy ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${INSTDIR}
	${INSTALL_DATA} ${WRKSRC}/dnscrypt-proxy/example-* ${INSTDIR}
	rm -f ${INSTDIR}/example-dnscrypt-proxy.toml${PATCHORIG}

.include <bsd.port.mk>
