# $OpenBSD: Makefile,v 1.16 2014/01/24 17:44:55 rpe Exp $

COMMENT =		ssh based config management framework

MODPY_EGG_VERSION =	1.4.4
REVISION =		0
DISTNAME =		ansible-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		http://ansibleworks.com/

MAINTAINER =		Robert Peichaer <rpe@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://ansibleworks.com/releases/

MODULES =		lang/python

RUN_DEPENDS =		security/py-paramiko \
			textproc/py-yaml \
			www/py-httplib2 \
			www/py-jinja2

USE_GROFF =		Yes
NO_TEST =		Yes

DOCDIR =		${PREFIX}/share/doc/ansible
EXDIR =			${PREFIX}/share/examples/ansible
MANDIR =		${PREFIX}/man
PLUGINDIR =		${PREFIX}/share/ansible_plugins

pre-configure:
	@perl -pi -e "s,/usr/share,${TRUEPREFIX}/share,g;" \
		  -e "s,/usr/share/ansible_plugins,${PLUGINDIR},g" \
		${WRKSRC}/lib/ansible/constants.py \
		${WRKSRC}/examples/ansible.cfg \
		${WRKSRC}/docs/man/man1/*.1

post-install:
	${INSTALL_DATA_DIR} ${EXDIR} ${DOCDIR} ${MANDIR}
	@cp -R ${WRKSRC}/examples/* ${EXDIR}/
	@chown -R ${SHAREOWN}:${SHAREGRP} ${EXDIR}
	${SUBST_CMD} ${EXDIR}/hosts
	@rm ${EXDIR}/hosts.{orig,beforesubst}
	${INSTALL_DATA} ${WRKSRC}/docs/man/man1/*.1 ${MANDIR}/man1
	${INSTALL_DATA} ${WRKSRC}/docs/man/man3/*.3 ${MANDIR}/man3
	${INSTALL_DATA} ${WRKSRC}/{COPYING,README.md} ${DOCDIR}/

.include <bsd.port.mk>
