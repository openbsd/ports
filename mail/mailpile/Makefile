# $OpenBSD: Makefile,v 1.1.1.1 2018/04/26 20:20:08 solene Exp $

COMMENT =	mail client with encryption and privacy features
PKGNAME =	${DISTNAME:L}
GH_ACCOUNT =	mailpile
GH_PROJECT =	Mailpile
GH_TAGNAME =	1.0.0rc2
CATEGORIES =	mail

MAINTAINER =	Solene Rapenne <solene@perso.pw>

# AGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_ADJ_FILES= mp scripts/mailpile-test.py

RUN_DEPENDS =	devel/py-fasteners \
		security/py-pgpdump \
		security/gnupg \
		security/py-crypto \
		textproc/py-lxml \
		www/py-jinja2

TEST_DEPENDS =	shells/bash \
		${RUN_DEPENDS}

NO_BUILD =	Yes

PKG_ARCH =	*

INSTDIR =	${PREFIX}/share/mailpile

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/scripts/test-sendmail.sh

do-install:
	find ${WRKSRC} -name '*.orig' -delete
	${INSTALL_DATA_DIR} ${INSTDIR}
	find ${WRKSRC} -exec ${MODPY_BIN} \
		${MODPY_LIBDIR}/compileall.py {} \;
	cd ${WRKSRC} && pax -rw * ${INSTDIR}
	cd ${INSTDIR} && rm -fr mailpile/tests packages
	@cd ${PREFIX}/bin && \
		ln -sf ../share/mailpile/mp mp

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} \
		scripts/mailpile-test.py

test: fake

.include <bsd.port.mk>
