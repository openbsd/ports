# $OpenBSD: Makefile,v 1.1.1.1 2016/07/04 21:02:08 awolk Exp $

COMMENT =	The Router Exploitation Framework

MODPY_EGG_VERSION = 2.1.0
GH_ACCOUNT =	reverse-shell
GH_PROJECT =	routersploit
GH_TAGNAME =	v${MODPY_EGG_VERSION}

CATEGORIES =	security net

MAINTAINER =		Adam Wolk <awolk@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		net/py-snmp \
			security/py-paramiko \
			www/py-beautifulsoup4 \
			www/py-requests

NO_TEST =		Yes

pre-configure:
	@sed -i 's,routersploit/modules,${MODPY_SITEPKG}/routersploit/modules,' \
		${WRKSRC}/routersploit/modules/scanners/{autopwn,dlink_scan}.py
	@sed -i 's,routersploit/modules,${MODPY_SITEPKG}/routersploit/modules,' \
		${WRKSRC}/routersploit/utils.py
	@cp ${FILESDIR}/setup.py ${WRKSRC}

.include <bsd.port.mk>
