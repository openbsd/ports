# $OpenBSD: Makefile,v 1.13 2019/10/02 08:16:33 solene Exp $

COMMENT =	mail client with encryption and privacy features
PKGNAME =	${DISTNAME:L}
GH_ACCOUNT =	mailpile
GH_PROJECT =	Mailpile
GH_TAGNAME =	1.0.0rc6
REVISION=2

HOMEPAGE =	https://www.mailpile.is/

CATEGORIES =	mail

MAINTAINER =	Solene Rapenne <solene@perso.pw>

# AGPLv3+
PERMIT_PACKAGE=	Yes

MODULES =	lang/python

RUN_DEPENDS =	devel/py-appdirs \
		devel/py-enum34 \
		devel/py-icalendar \
		devel/py-fasteners \
		devel/py-six \
		net/py-idna \
		security/py-asn1crypto \
		security/gnupg \
		security/py-cryptodome \
		security/py-cryptography \
		security/py-pgpdump \
		textproc/py-lxml \
		www/py-jinja2

TEST_DEPENDS =	shells/bash

INSTDIR =	${PREFIX}/share/mailpile

NO_BUILD =		Yes
MODPY_BUILDDEP =	Yes

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
