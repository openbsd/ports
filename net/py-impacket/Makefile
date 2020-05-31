# $OpenBSD: Makefile,v 1.24 2020/05/31 12:05:22 jasper Exp $

FIX_EXTRACT_PERMISSIONS = Yes

COMMENT =		Python classes providing access to network packets

MODPY_EGG_VERSION =	0.9.21
DISTNAME =		impacket-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
EPOCH =			0
CATEGORIES =		net security

HOMEPAGE =		https://www.secureauth.com/labs/open-source-tools/impacket

# Apache modified
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes
MODPY_ADJ_FILES =	impacket/ese.py \
			impacket/examples/logger.py \
			impacket/examples/ntlmrelayx/clients/httprelayclient.py \
			impacket/examples/ntlmrelayx/clients/ldaprelayclient.py \
			impacket/examples/ntlmrelayx/clients/mssqlrelayclient.py \
			impacket/examples/ntlmrelayx/clients/smbrelayclient.py \
			impacket/examples/ntlmrelayx/servers/httprelayserver.py \
			impacket/examples/ntlmrelayx/servers/smbrelayserver.py \
			impacket/examples/ntlmrelayx/utils/config.py \
			impacket/examples/ntlmrelayx/utils/targetsutils.py \
			impacket/tds.py

# ntlmrelayx can additionaly use py-ldap3, py-flask and unported py-ldapdomaindump
RUN_DEPENDS =		devel/py-asn1${MODPY_FLAVOR} \
			devel/py-future${MODPY_FLAVOR} \
			net/py-pcapy${MODPY_FLAVOR} \
			security/py-cryptodome${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR}

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/examples/goldenPac.py \
		${WRKSRC}/examples/nmapAnswerMachine.py \
		${WRKSRC}/examples/raiseChild.py
# Adjust Cryptodomex imports
	find ${WRKSRC} -type f -name \*.py -exec sed -i 's,Cryptodome,Crypto,g' {} +

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${PKGSTEM}
	mv ${PREFIX}/bin/*.py ${PREFIX}/share/examples/${PKGSTEM}
	mv ${PREFIX}/share/doc/impacket ${PREFIX}/share/doc/${PKGSTEM}
# Add missing shebangs
	for i in ${PREFIX}/share/examples/${PKGSTEM}/*.py; do \
		perl -pi -e 'print "#!${MODPY_BIN}\n" if $$. == 1' $${i}; \
	done

.include <bsd.port.mk>
