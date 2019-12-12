# $OpenBSD: Makefile,v 1.4 2019/12/12 16:16:51 jasper Exp $

COMMENT =	extensible network protocol fuzzer

MODPY_EGG_VERSION =	0.1.6
DISTNAME =	boofuzz-${MODPY_EGG_VERSION}

CATEGORIES =	security

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =	https://github.com/jtpereyda/boofuzz

# GPLv2
PERMIT_PACKAGE =	Yes

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

# XXX: Stick with python2 until py-impacket has been updated
#      to a version > 0.9.15
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/boofuzz/requests
	${INSTALL_DATA} ${WRKSRC}/requests/*.py \
		${PREFIX}/share/examples/boofuzz/requests/

.include <bsd.port.mk>
