# $OpenBSD: Makefile,v 1.12 2011/09/16 12:00:09 espie Exp $

COMMENT=		web frontend to symon
DISTNAME=		syweb-0.63
REVISION=		1
CATEGORIES=		www sysutils

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=		http://www.xs4all.nl/~wpd/symon

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/philes/

NO_REGRESS=		Yes
NO_BUILD=		Yes

PREFIX=			/var/www

MODULES=		lang/php
RUN_DEPENDS=		net/rrdtool

WRKDIST=		${WRKDIR}/syweb

do-install:
	find ${WRKDIR} -name \*.orig -exec rm {} \;
	${TAR} -C ${WRKDIST} -cf - htdocs symon | ${TAR} -C ${PREFIX} -xpf -
	${INSTALL_DATA_DIR} ${PREFIX}/symon
	${INSTALL_SCRIPT} ${WRKDIST}/install_rrdtool.sh ${PREFIX}/symon
	mkdir ${PREFIX}/symon/rrds
	mkdir ${PREFIX}/symon/cache
	cd ${PREFIX}/htdocs/syweb && mv setup.inc setup.inc.sample
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/htdocs/syweb ${PREFIX}/symon

.include <bsd.port.mk>
