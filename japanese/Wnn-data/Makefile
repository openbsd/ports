# $OpenBSD: Makefile,v 1.6 2000/06/22 20:59:57 espie Exp $

CATEGORIES= japanese chinese korean
DISTNAME= Wnn-data-4.2
DISTFILES=

MAINTAINER=	espie@cvs.openbsd.org
LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes

pre-extract:
	@cd ${PORTSDIR} && cd japanese/Wnn && make patch

post-extract:
	mkdir -p ${WRKDIST}
	cd `cd ${PORTSDIR} && cd japanese/Wnn && \
		make show VARNAME=WRKDIST`; \
	cp Wnn/jd/sysV/* Wnn/jd/serverdefs ${WRKDIST}


do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/wnn
	${INSTALL_DATA} ${WRKDIST}/cvt_key* ${PREFIX}/lib/wnn
	${INSTALL_DATA} ${WRKDIST}/serverdefs ${PREFIX}/lib/wnn
	${INSTALL_SCRIPT} ${FILESDIR}/install-script ${PREFIX}/lib/wnn
.include <bsd.port.mk>
