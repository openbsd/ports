COMMENT=	Python classes providing access to network packets

MODPY_DISTV=	0.13.1
DISTNAME=	impacket-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	net security

HOMEPAGE=	https://github.com/fortra/impacket

EPOCH=		0

# Apache modified
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

MODPY_PYTEST_IGNORE= \
		tests/dcerpc \
		tests/SMB_RPC/test_ldap.py \
		tests/SMB_RPC/test_rpcrt.py \
		tests/SMB_RPC/test_smb.py \
		tests/SMB_RPC/test_wmi.py

# ntlmrelayx can additionaly use py-flask and unported py-ldapdomaindump
RUN_DEPENDS=	devel/py-six \
		textproc/py-charset-normalizer \
		devel/py-asn1 \
		devel/py-asn1-modules \
		security/py-cryptodomex \
		security/py-openssl \
		databases/py-ldap3 \
		net/py-pcapy

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${PKGSTEM}
	mv ${PREFIX}/bin/*.py ${PREFIX}/share/examples/${PKGSTEM}
	mv ${PREFIX}/share/doc/impacket ${PREFIX}/share/doc/${PKGSTEM}

.include <bsd.port.mk>
