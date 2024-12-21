FIX_EXTRACT_PERMISSIONS = Yes

COMMENT =		Python classes providing access to network packets

MODPY_DISTV =	0.9.24
DISTNAME =		impacket-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
EPOCH =			0
CATEGORIES =		net security
REVISION =		4

HOMEPAGE =		https://github.com/fortra/impacket

# Apache modified
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
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
RUN_DEPENDS =		devel/py-asn1 \
			devel/py-future \
			net/py-pcapy \
			security/py-cryptodomex \
			security/py-openssl

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/examples/goldenPac.py \
		${WRKSRC}/examples/nmapAnswerMachine.py \
		${WRKSRC}/examples/raiseChild.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${PKGSTEM}
	mv ${PREFIX}/bin/*.py ${PREFIX}/share/examples/${PKGSTEM}
	mv ${PREFIX}/share/doc/impacket ${PREFIX}/share/doc/${PKGSTEM}
# Add missing shebangs
	for i in ${PREFIX}/share/examples/${PKGSTEM}/*.py; do \
		perl -pi -e 'print "#!${MODPY_BIN}\n" if $$. == 1' $${i}; \
	done

.include <bsd.port.mk>
