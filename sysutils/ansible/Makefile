# $OpenBSD: Makefile,v 1.80 2017/08/09 12:48:30 jasper Exp $

COMMENT-main =		ssh based config management framework
COMMENT-html =		offline Ansible documentation in HTML format

MODPY_EGG_VERSION =	2.3.2.0
DISTNAME =		ansible-${MODPY_EGG_VERSION}
PKGNAME-main =		${PKGNAME}
PKGNAME-html =		ansible-html-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		http://www.ansible.com/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

MULTI_PACKAGES =	-main -html

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://releases.ansible.com/ansible/

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		textproc/py-sphinx
RUN_DEPENDS =		security/py-crypto \
			security/py-keyczar \
			security/py-paramiko \
			security/py-passlib \
			textproc/py-yaml \
			www/py-jinja2
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
	${LOCALBASE}/bin/sphinx-build -M html rst _build -j ${MAKE_JOBS}
	# Ansible misses this file in distribution?
	ln ${WRKSRC}/docs/docsite/_build/html/_static/css/theme.css \
	      ${WRKSRC}/docs/docsite/_build/html/_static/css/theme.min.css

post-install:
	${INSTALL_DATA_DIR} ${EXDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXDIR}
	${SUBST_CMD} ${EXDIR}/hosts
	${INSTALL_DATA} ${WRKSRC}/docs/man/man1/*.1 ${PREFIX}/man/man1
	cp -R ${WRKBUILD}/docs/docsite/_build/html ${DOCDIR}
	rm -f ${DOCDIR}/html/.buildinfo
	${INSTALL_DATA} ${WRKSRC}/{COPYING,README.md} ${DOCDIR}/
	find ${PREFIX} \( -name '*.orig' -o -name '.git*' \
		-o -name '*.beforesubst' \) -type f -exec rm {} +

.include <bsd.port.mk>
