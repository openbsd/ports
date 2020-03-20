# $OpenBSD: Makefile,v 1.29 2020/03/20 16:44:28 naddy Exp $

COMMENT=	web frontend to symon
DISTNAME=	syweb-0.65
REVISION=	9
CATEGORIES=	www sysutils

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
	find ${WRKDIR} -name \*.orig -delete
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
