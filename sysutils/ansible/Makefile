# $OpenBSD: Makefile,v 1.2 2013/03/07 07:32:14 rpe Exp $

COMMENT =		ssh based config management framework

MODPY_EGG_VERSION =	1.0
DISTNAME =		ansible-release${MODPY_EGG_VERSION}
PKGNAME =		ansible-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		http://ansible.cc/

MAINTAINER =		Robert Peichaer <rpe@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://spacehopper.org/mirrors/ \
			http://distfiles.bsdfrog.org/

MODULES =		lang/python

MODPY_ADJ_FILES =	bin/ansible* \
			library/* \
			lib/ansible/utils/module_docs.py

RUN_DEPENDS =		security/py-paramiko \
			textproc/py-yaml \
			www/py-jinja2

USE_GROFF =		Yes

NO_REGRESS =		Yes

DOCDIR =		${PREFIX}/share/doc/ansible
EXDIR =			${PREFIX}/share/examples/ansible
MANDIR =		${PREFIX}/man/man1
PLUGINDIR =		${PREFIX}/share/ansible_plugins

post-extract:
	@perl -pi \
		-e "s,/usr/share,${TRUEPREFIX}/share,g;" \
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
	${INSTALL_DATA} ${WRKSRC}/docs/man/man1/*.1 ${MANDIR}/
	${INSTALL_DATA} ${WRKSRC}/{CHANGELOG.md,COPYING,README.md} ${DOCDIR}/

.include <bsd.port.mk>
