# $OpenBSD: Makefile,v 1.1.1.1 2000/04/20 22:50:49 espie Exp $

CATEGORIES= japanese chinese korean
DISTNAME= Wnn-data-4.2
DISTFILES=

MAINTAINER=	espie@cvs.openbsd.org
LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		/nonexistent::japanese/Wnn:patch
NO_BUILD=		Yes
FAKE=			Yes


post-extract:
	mkdir -p ${WRKDIST}
	cd `cd ${PORTSDIR} && cd japanese-keep/wnn4 && \
		make show VARNAME=WRKDIST`; \
	cp Wnn/jd/sysV/* ${WRKDIST}


do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/wnn
	${INSTALL_DATA} ${WRKDIST}/* ${PREFIX}/lib/wnn
	${INSTALL_DATA} ${FILESDIR}/install-script ${PREFIX}/lib/wnn
.include <bsd.port.mk>
