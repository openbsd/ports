# $OpenBSD: Makefile,v 1.2 2014/09/02 10:14:32 espie Exp $

COMMENT=	Ubiquiti mfi wireless controller

DISTFILES=	mFi-$V{mFi.unix}.zip
V=		2.0.24
FW_VER=		2.0.24.1227
PKGNAME=	mfi-$V
REVISION=	0

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

.include <bsd.port.mk>
