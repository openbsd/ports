# $OpenBSD: Makefile,v 1.67 2016/10/31 17:50:44 jasper Exp $

COMMENT =		ssh based config management framework

MODPY_EGG_VERSION =	2.1.2.0
DISTNAME =		ansible-${MODPY_EGG_VERSION}
REVISION =		8

CATEGORIES =		sysutils

HOMEPAGE =		http://www.ansible.com/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://releases.ansible.com/ansible/

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		security/py-crypto \
			security/py-keyczar \
			security/py-passlib \
			textproc/py-yaml \
			www/py-jinja2

NO_TEST =		Yes

DOCDIR =		${PREFIX}/share/doc/ansible
EXDIR =			${PREFIX}/share/examples/ansible
PLUGINDIR =		${PREFIX}/share/ansible_plugins

pre-configure:
	sed -i -e "s,/usr/share,${TRUEPREFIX}/share,g;" \
		  -e "s,/usr/share/ansible_plugins,${PLUGINDIR},g" \
		${WRKSRC}/lib/ansible/constants.py \
		${WRKSRC}/examples/ansible.cfg \
		${WRKSRC}/docs/man/man1/*.1

post-install:
	${INSTALL_DATA_DIR} ${EXDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXDIR}
	${SUBST_CMD} ${EXDIR}/hosts
	${INSTALL_DATA} ${WRKSRC}/docs/man/man1/*.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/{COPYING,README.md} ${DOCDIR}/
	find ${PREFIX} \( -name '*.orig' -o -name '.git*' \
		-o -name '*.beforesubst' \) -type f -exec rm {} +

.include <bsd.port.mk>
