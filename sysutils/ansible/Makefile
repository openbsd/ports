# $OpenBSD: Makefile,v 1.122 2020/04/18 21:12:16 pvk Exp $

COMMENT-main =		ssh based config management framework
COMMENT-html =		offline Ansible documentation in HTML format

MODPY_EGG_VERSION =	2.9.7
DISTNAME =		ansible-${MODPY_EGG_VERSION}
PKGNAME-main =		${PKGNAME}
PKGNAME-html =		ansible-html-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://www.ansible.com/

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

MULTI_PACKAGES =	-main -html

# GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://releases.ansible.com/ansible/

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/py-straight.plugin${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR} \
			textproc/py-sphinx-notfound-page${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}
RUN_DEPENDS =		net/py-netaddr${MODPY_FLAVOR} \
			security/py-cryptodome${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			security/py-paramiko${MODPY_FLAVOR} \
			security/py-passlib${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}
RUN_DEPENDS-html =

USE_GMAKE =		Yes

PKG_ARCH-html =		*

NO_TEST =		Yes

MODPY_ADJ_FILES =	docs/bin/*.py

DOCDIR =		${PREFIX}/share/doc/ansible
EXDIR =			${PREFIX}/share/examples/ansible
PLUGINDIR =		${PREFIX}/share/ansible_plugins

pre-configure:
	sed -i -e "s,/usr/share,${TRUEPREFIX}/share,g;" \
		  -e "s,/usr/share/ansible_plugins,${PLUGINDIR},g" \
		${WRKSRC}/lib/ansible/constants.py \
		${WRKSRC}/examples/ansible.cfg \
		${WRKSRC}/docs/man/man1/*.1

pre-build:
	ln -sf ${LOCALBASE}/bin/sphinx-build${MODPY_BIN_SUFFIX} \
		${WRKDIR}/bin/sphinx-build

# "_build" to be revisited in case SEPARATE_BUILD is changed
post-build:
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -C ${WRKSRC}/docs/docsite \
		ANSIBLE_LOCAL_TEMP=./tmp CPUS=${MAKE_JOBS} all
	sed -i -e "s,/_prefix_start_/_prefix_end_/,,g" \
		${WRKSRC}/docs/docsite/_build/html/404.html

post-install:
	${INSTALL_DATA_DIR} ${EXDIR}/scripts ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/scripts/* ${EXDIR}/scripts/
	${INSTALL_DATA} ${WRKSRC}/examples/{ansible.cfg,hosts} ${EXDIR}
	${SUBST_CMD} ${EXDIR}/hosts
	${INSTALL_DATA} ${WRKSRC}/docs/man/man1/*.1 ${PREFIX}/man/man1
	cp -R ${WRKBUILD}/docs/docsite/_build/html ${DOCDIR}
	rm -f ${DOCDIR}/html/.buildinfo
	${INSTALL_DATA} ${WRKSRC}/{COPYING,README.rst} ${DOCDIR}/
	find ${PREFIX} -type f \( -name '*.orig' -o -name '.git*' \
		-o -name '*.beforesubst' \) -delete

.include <bsd.port.mk>
