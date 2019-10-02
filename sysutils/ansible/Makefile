# $OpenBSD: Makefile,v 1.110 2019/10/02 07:55:22 pvk Exp $

COMMENT-main =		ssh based config management framework
COMMENT-html =		offline Ansible documentation in HTML format

MODPY_EGG_VERSION =	2.8.5
DISTNAME =		ansible-${MODPY_EGG_VERSION}
PKGNAME-main =		${PKGNAME}
PKGNAME-html =		ansible-html-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://www.ansible.com/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

MULTI_PACKAGES =	-main -html

# GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://releases.ansible.com/ansible/

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR} \
			textproc/py-sphinx-notfound-page${MODPY_FLAVOR}
RUN_DEPENDS =		net/py-netaddr${MODPY_FLAVOR} \
			security/py-cryptodome${MODPY_FLAVOR} \
			security/py-paramiko${MODPY_FLAVOR} \
			security/py-passlib${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}
RUN_DEPENDS-html =	${BUILD_PKGPATH},-main

PKG_ARCH-html =		*

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

# "_build" to be revisited in case SEPARATE_BUILD is changed
post-build:
	cd ${WRKSRC}/docs/docsite; \
	${LOCALBASE}/bin/sphinx-build${MODPY_BIN_SUFFIX} -M html rst _build -j ${MAKE_JOBS}

post-install:
	${INSTALL_DATA_DIR} ${EXDIR}/scripts ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/scripts/* ${EXDIR}/scripts/
	${INSTALL_DATA} ${WRKSRC}/examples/{ansible.cfg,hosts} ${EXDIR}
	${SUBST_CMD} ${EXDIR}/hosts
	${INSTALL_DATA} ${WRKSRC}/docs/man/man1/*.1 ${PREFIX}/man/man1
	cp -R ${WRKBUILD}/docs/docsite/_build/html ${DOCDIR}
	rm -f ${DOCDIR}/html/.buildinfo
	${INSTALL_DATA} ${WRKSRC}/{COPYING,README.rst} ${DOCDIR}/
	find ${PREFIX} \( -name '*.orig' -o -name '.git*' \
		-o -name '*.beforesubst' \) -type f -exec rm {} +

.include <bsd.port.mk>
