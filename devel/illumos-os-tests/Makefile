COMMENT =	illumos os-tests source for regression testing

# No releases
VERSION =	20250628
DISTNAME =	illumos-os-tests-${VERSION}

GH_ACCOUNT =	illumos
GH_PROJECT =	illumos-gate
GH_COMMIT =	b3ff81dc6673bee7f291d9d66a832cb3e1004f49

CATEGORIES =	devel

# CDDL
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

OS_TEST_DIR =	${PREFIX}/share/illumos-os-tests

do-install:
	${INSTALL_DATA_DIR} ${OS_TEST_DIR}
	cp ${FILESDIR}/CDDL ${OS_TEST_DIR}
	cd ${WRKSRC}/usr/src/test/os-tests && \
		pax -rw -s '/^.*${PATCHORIG}$$//' . ${OS_TEST_DIR}

.include <bsd.port.mk>
