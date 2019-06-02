# $OpenBSD: Makefile,v 1.2 2019/06/02 11:42:21 jasper Exp $

COMMENT =	extensible network protocol fuzzer

MODPY_EGG_VERSION =	0.1.5
DISTNAME =	boofuzz-${MODPY_EGG_VERSION}

CATEGORIES =	security

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =	https://github.com/jtpereyda/boofuzz

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS = 		databases/py-ldap3 \
			devel/py-attrs \
			devel/py-backports-shutil-get-terminal-size \
			devel/py-click \
			devel/py-colorama \
			devel/py-future \
			devel/py-serial \
			graphics/py-dot \
			net/py-impacket \
			sysutils/py-psutil \
			www/py-flask \
			www/py-tornado

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/boofuzz/requests
	${INSTALL_DATA} ${WRKSRC}/requests/*.py \
		${PREFIX}/share/examples/boofuzz/requests/

.include <bsd.port.mk>
