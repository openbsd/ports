# $OpenBSD: Makefile,v 1.4 2018/05/18 20:06:32 jasper Exp $

COMMENT =	mail client with encryption and privacy features
PKGNAME =	${DISTNAME:L}
GH_ACCOUNT =	mailpile
GH_PROJECT =	Mailpile
GH_TAGNAME =	1.0.0rc2
REVISION =	1

CATEGORIES =	mail

MAINTAINER =	Solene Rapenne <solene@perso.pw>

# AGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

RUN_DEPENDS =	devel/py-fasteners \
		security/py-pgpdump \
		security/gnupg \
		security/py-cryptodome \
		textproc/py-lxml \
		www/py-jinja2

TEST_DEPENDS =	shells/bash \
		${RUN_DEPENDS}

PKG_ARCH =	*

INSTDIR =	${PREFIX}/share/mailpile

# Nothing to build but allows MODPY to
# define BUILD_DEPENDS correctly
do-build:

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	find ${WRKSRC} -exec ${MODPY_BIN} \
		${MODPY_LIBDIR}/compileall.py {} \;
	cd ${WRKSRC} && pax -rw * ${INSTDIR}
	cd ${INSTDIR} && rm -fr mailpile/tests packages
	find ${INSTDIR} -name '*.orig' -delete
	@cd ${PREFIX}/bin && \
		ln -sf ../share/mailpile/mp mp

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} \
		scripts/mailpile-test.py

test: fake

.include <bsd.port.mk>
