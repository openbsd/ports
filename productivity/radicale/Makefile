COMMENT =	simple CalDAV calendar server

MODPY_DISTV =	3.8.3
#DISTNAME =	radicale-${MODPY_DISTV}
GH_ACCOUNT =	Kozea
GH_PROJECT =	Radicale
GH_TAGNAME =	v${MODPY_DISTV}
PKGNAME =	radicale-${MODPY_DISTV}

CATEGORIES =	productivity net

HOMEPAGE =	https://radicale.org/

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
#MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	textproc/py-defusedxml \
		security/py-passlib \
		textproc/py-vobject \
		${net/py-pika} \
		www/py-requests \

#NO_TEST =	Yes
# pam
TEST_DEPENDS =	www/py-waitress \
		security/py-bcrypt \
		security/py-argon2-cffi \
		databases/py-ldap3

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/radicale/config.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/radicale
	${INSTALL_DATA} ${WRKSRC}/*.md ${PREFIX}/share/doc/radicale/
	${SUBST_DATA} ${WRKSRC}/config ${PREFIX}/share/examples/radicale/config
	${INSTALL_DATA} ${WRKSRC}/rights ${PREFIX}/share/examples/radicale/
	touch ${PREFIX}/share/examples/radicale/log

.include <bsd.port.mk>
