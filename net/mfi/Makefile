# $OpenBSD: Makefile,v 1.4 2014/12/07 14:35:31 jasper Exp $

COMMENT=	Ubiquiti mfi wireless controller

DISTFILES=	mFi-$V{mFi.unix}.zip
V=		2.0.24
FW_VER=		2.0.24.1227
PKGNAME=	mfi-$V
REVISION=	2

CATEGORIES=	net

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# at least the firmware files are restricted, if not more
PERMIT_PACKAGE_CDROM=	http://www.ubnt.com/eula/
PERMIT_PACKAGE_FTP=	http://www.ubnt.com/eula/
PERMIT_DISTFILES_FTP=	http://www.ubnt.com/eula/

MASTER_SITES=	http://dl.ubnt.com/mfi/$V/

MODULES=	java
MODJAVA_VER=	1.6+
MODJAVA_JRERUN=	yes

RUN_DEPENDS=	databases/mongodb \
		java/javaPathHelper

NO_BUILD=	Yes
NO_TEST=	Yes

WRKDIST=	${WRKDIR}/mFi
INSTDIR=	${PREFIX}/share/mfi/
SUBST_VARS=	FW_VER

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKSRC}/* ${INSTDIR}
	ln -fs ${LOCALBASE}/bin/mongod ${INSTDIR}/bin/mongod
	ln -s /var/log/mfi ${INSTDIR}/logs
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} -type f|xargs chmod ${SHAREMODE}
	find ${INSTDIR} -type d|xargs chmod ${DIRMODE}
	${SUBST_CMD} -c -m 555 -o ${BINOWN} -g ${BINGRP} \
		${FILESDIR}/mfi.sh ${PREFIX}/bin/mfi

.include <bsd.port.mk>
