# $OpenBSD: Makefile,v 1.16 2020/03/20 16:44:26 naddy Exp $

COMMENT=	Ubiquiti mfi wireless controller

DISTFILES=	mFi-$V{mFi.unix}.zip
V=		2.1.2
FW_VER=		2.1.2.1297
PKGNAME=	mfi-$V
REVISION=	7

CATEGORIES=	net

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# at least the firmware files are restricted, if not more
PERMIT_PACKAGE=		http://www.ubnt.com/eula/
PERMIT_DISTFILES=	http://www.ubnt.com/eula/

MASTER_SITES=	http://dl.ubnt.com/mfi/$V/

MODULES=	java
MODJAVA_VER=	1.8

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
	find ${INSTDIR} -type f -exec chmod ${SHAREMODE} {} + -o \
		-type d -exec chmod ${DIRMODE} {} +
	${SUBST_CMD} -c -m 555 -o ${BINOWN} -g ${BINGRP} \
		${FILESDIR}/mfi.sh ${PREFIX}/bin/mfi

.include <bsd.port.mk>
