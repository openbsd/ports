COMMENT=	web frontend to symon
DISTNAME=	syweb-0.67
CATEGORIES=	www sysutils
REVISION=	0

HOMEPAGE=	http://www.xs4all.nl/~wpd/symon

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}/philes/

NO_TEST=	Yes
NO_BUILD=	Yes

PREFIX=		${VARBASE}/www

MODULES=	lang/php
RUN_DEPENDS=	net/rrdtool

WRKDIST=	${WRKDIR}/syweb

do-install:
	${TAR} -C ${WRKDIST} -cf - htdocs symon | ${TAR} -C ${PREFIX} -xpf -
	${INSTALL_DATA_DIR} ${PREFIX}/symon
	${INSTALL_SCRIPT} ${WRKDIST}/install_rrdtool.sh ${PREFIX}/symon
	mkdir ${PREFIX}/symon/rrds
	mkdir ${PREFIX}/symon/cache
	cd ${PREFIX}/htdocs/syweb && mv setup.inc setup.inc.sample
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/htdocs/syweb ${PREFIX}/symon
	sed -i "s,'/bin/rrdtool','${LOCALBASE}/bin/rrdtool'," \
	    ${PREFIX}/htdocs/syweb/setup.inc.sample

.include <bsd.port.mk>
