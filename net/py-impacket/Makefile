# $OpenBSD: Makefile,v 1.17 2016/09/01 12:21:05 dcoppa Exp $

COMMENT =		Python classes providing access to network packets

MODPY_EGG_VERSION =	0.9.15
DISTNAME =		impacket-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
EPOCH =			0
CATEGORIES =   		net security

HOMEPAGE =		https://github.com/CoreSecurity/impacket

# Apache modified
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

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

# one example also uses python-tkinter, but it's pretty heavy and
# not required for normal use.
RUN_DEPENDS =		devel/py-asn1>=0.1.7 \
			net/py-pcapy \
			security/py-crypto>=2.6 \
			security/py-openssl

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/examples/goldenPac.py \
		${WRKSRC}/examples/nmapAnswerMachine.py \
		${WRKSRC}/examples/raiseChild.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-impacket
	mv ${PREFIX}/bin/*.py ${PREFIX}/share/examples/py-impacket/
	mv ${PREFIX}/share/doc/impacket ${PREFIX}/share/doc/py-impacket
# Fix permissions
	chmod 0444 ${PREFIX}/share/doc/py-impacket/*
# Add missing shebangs
.for s in loopchain nmapAnswerMachine os_ident uncrc32
	perl -pi -e 'print "#!${MODPY_BIN}\n" if $$. == 1' \
		${PREFIX}/share/examples/py-impacket/${s}.py
.endfor

.include <bsd.port.mk>
