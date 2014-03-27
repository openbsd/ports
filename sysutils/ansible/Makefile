# $OpenBSD: Makefile,v 1.22 2014/03/27 12:07:59 naddy Exp $

COMMENT =		ssh based config management framework

MODPY_EGG_VERSION =	1.5.3
DISTNAME =		ansible-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		http://www.ansible.com/

MAINTAINER =		Robert Peichaer <rpe@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://releases.ansible.com/ansible/

MODULES =		lang/python

RUN_DEPENDS =		security/py-keyczar \
			security/py-paramiko \
			textproc/py-yaml \
			www/py-httplib2 \
			www/py-jinja2

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

pre-install:
	@find ${WRKSRC} -name '*.orig' -type f -exec rm {} +

post-install:
	${INSTALL_DATA_DIR} ${EXDIR} ${DOCDIR} ${MANDIR}
	@cp -R ${WRKSRC}/examples/* ${EXDIR}/
	@chown -R ${SHAREOWN}:${SHAREGRP} ${EXDIR}
	${SUBST_CMD} ${EXDIR}/hosts
	@rm ${EXDIR}/hosts.beforesubst
	${INSTALL_DATA} ${WRKSRC}/docs/man/man1/*.1 ${MANDIR}/man1
	${INSTALL_DATA} ${WRKSRC}/{COPYING,README.md} ${DOCDIR}/

.include <bsd.port.mk>
