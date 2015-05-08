# $OpenBSD: Makefile,v 1.8 2015/05/08 08:56:15 espie Exp $

COMMENT =		ports-readmes dancer web app
PKG_ARCH = *
DISTNAME =		ports-readmes-dancer-3

MAINTAINER =		Marc Espie <espie@openbsd.org>
MASTER_SITES  =		http://distfiles.nl/
CATEGORIES =		databases www

# BSD
PERMIT_PACKAGE_CDROM =	Yes
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
		databases/sqlports,-compact>=2.7 \
		databases/pkglocatedb

.include <bsd.port.mk>
