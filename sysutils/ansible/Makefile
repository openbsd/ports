# $OpenBSD: Makefile,v 1.1.1.1 2013/02/04 10:35:14 rpe Exp $

COMMENT =		ssh based config management framework

MODPY_EGG_VERSION =	0.9
DISTNAME =		ansible-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		http://ansible.cc/

MAINTAINER =		Robert Peichaer <rpe@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		https://github.com/downloads/ansible/ansible/

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
PLUGINDIR =		${PREFIX}/share/ansible_plugins

post-extract:
	@perl -pi \
		-e "s,/usr/share,${TRUEPREFIX}/share,g;" \
		-e "s,/usr/share/ansible_plugins,${PLUGINDIR},g" \
		${WRKSRC}/lib/ansible/constants.py \
		${WRKSRC}/examples/ansible.cfg
	@perl -pi -e "s,/usr/bin/ansible,${TRUEPREFIX}/bin/ansible," \
 		${WRKSRC}/library/*

post-install:
	${INSTALL_DATA_DIR} ${EXDIR} ${DOCDIR}
	@cp -R ${WRKSRC}/examples/* ${EXDIR}/
	@chown -R ${SHAREOWN}:${SHAREGRP} ${EXDIR}
.for i in 1 3
	${INSTALL_DATA_DIR} ${PREFIX}/man/man${i}
	${INSTALL_DATA} ${WRKSRC}/docs/man/man${i}/*.${i} ${PREFIX}/man/man${i}
.endfor
.for f in README.md COPYING
	${INSTALL_DATA} ${WRKSRC}/${f} ${DOCDIR}/
.endfor

.include <bsd.port.mk>
