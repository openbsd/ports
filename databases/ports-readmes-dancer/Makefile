# $OpenBSD: Makefile,v 1.18 2019/08/20 12:32:06 espie Exp $

COMMENT =		ports-readmes dancer web app
PKG_ARCH = *

MAINTAINER =		Marc Espie <espie@openbsd.org>

GH_PROJECT = ports-readmes-dancer
GH_TAGNAME = 3.3
GH_ACCOUNT = marcespie
CATEGORIES =		databases www

# BSD
PERMIT_PACKAGE =	Yes
INSTALL_DIR = ${PREFIX}/libdata/ports-readmes-dancer
NO_BUILD =	Yes

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_DIR}
	cp -r ${WRKSRC}/*  ${INSTALL_DIR}
	rm -f ${INSTALL_DIR}/config.yml
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/config.yml.sample ${INSTALL_DIR}/config.yml.sample
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTALL_DIR}
	chmod ${BINMODE} ${INSTALL_DIR}/bin/ports-readmes
	${SUBST_PROGRAM} ${FILESDIR}/ports-readmes ${PREFIX}/bin/ports-readmes

RUN_DEPENDS = 	www/p5-Dancer \
		databases/p5-DBI \
		databases/p5-DBD-SQLite \
		textproc/p5-Template \
		devel/p5-YAML \
		databases/sqlports>=7.0 \
		databases/pkglocatedb

.include <bsd.port.mk>
