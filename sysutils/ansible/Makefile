# $OpenBSD: Makefile,v 1.4 2013/04/06 09:40:02 rpe Exp $

COMMENT =		ssh based config management framework

MODPY_EGG_VERSION =	1.1
DISTNAME =		ansible-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		http://ansible.cc/

MAINTAINER =		Robert Peichaer <rpe@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://ansible.cc/releases/

MODULES =		lang/python

MODPY_ADJ_FILES =	lib/ansible/utils/module_docs.py \
			library/*

RUN_DEPENDS =		security/py-paramiko \
			textproc/py-yaml \
			www/py-jinja2

USE_GROFF =		Yes
NO_TEST =		Yes

DOCDIR =		${PREFIX}/share/doc/ansible
EXDIR =			${PREFIX}/share/examples/ansible
MANDIR =		${PREFIX}/man
PLUGINDIR =		${PREFIX}/share/ansible_plugins

post-extract:
	@perl -pi -e "s,/usr/share,${TRUEPREFIX}/share,g;" \
		  -e "s,/usr/share/ansible_plugins,${PLUGINDIR},g" \
		${WRKSRC}/lib/ansible/constants.py \
		${WRKSRC}/examples/ansible.cfg \
		${WRKSRC}/docs/man/man1/*.1
	@perl -pi -e "s,/usr/bin/ansible,${TRUEPREFIX}/bin/ansible," \
 		${WRKSRC}/library/*

post-install:
	${INSTALL_DATA_DIR} ${EXDIR} ${DOCDIR} ${MANDIR}
	@cp -R ${WRKSRC}/examples/* ${EXDIR}/
	@chown -R ${SHAREOWN}:${SHAREGRP} ${EXDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/man/man1/*.1 ${MANDIR}/man1
	${INSTALL_DATA} ${WRKSRC}/docs/man/man3/*.3 ${MANDIR}/man3
	${INSTALL_DATA} ${WRKSRC}/{COPYING,README.md} ${DOCDIR}/

.include <bsd.port.mk>
