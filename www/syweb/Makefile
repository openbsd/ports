COMMENT=	web frontend to symon

#GH_ACCOUNT=	dijkstrw
#GH_PROJECT=	syweb
#GH_TAGNAME=	0.67
DIST_TUPLE=	github dijkstrw syweb 0.67 .
REVISION=	4

CATEGORIES=	www sysutils

HOMEPAGE=	https://github.com/dijkstrw/syweb

# BSD
PERMIT_PACKAGE=	Yes

NO_TEST=	Yes
NO_BUILD=	Yes

PREFIX=		${VARBASE}/www

MODULES=	lang/php
RUN_DEPENDS=	net/rrdtool

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
