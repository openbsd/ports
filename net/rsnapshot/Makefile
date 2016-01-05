# $OpenBSD: Makefile,v 1.17 2016/01/05 17:14:01 ajacoutot Exp $

COMMENT=		remote filesystem snapshot utility

GH_ACCOUNT=		rsnapshot
GH_PROJECT=		rsnapshot
GH_TAGNAME=		1.4.2

CATEGORIES=		net sysutils

HOMEPAGE=		http://www.rsnapshot.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15

BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			net/rsync

RUN_DEPENDS=		devel/p5-Lchown \
			net/rsync

PKG_ARCH=		*

CONFIGURE_STYLE=	gnu

SAMPLES_DIR=		${PREFIX}/share/examples/rsnapshot
FAKE_FLAGS=		sysconfdir=${SAMPLES_DIR}

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

pre-build:
	sed -i "s,/etc/rsnapshot.conf,${SYSCONFDIR}/rsnapshot.conf,g" \
		${WRKSRC}/{README.md,rsnapshot-program.pl} \
		${WRKSRC}/rsnapshot{,-diff} \
		${WRKSRC}/utils/rsnapshotdb/rsnapshotDB.pl

post-install:
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}/utils
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}/utils/rsnapshotdb
	${INSTALL_DATA} ${WRKSRC}/README.md ${SAMPLES_DIR}
	${INSTALL_DATA} ${WRKSRC}/utils/README ${SAMPLES_DIR}/utils
	${INSTALL_DATA} ${WRKSRC}/utils/rsnapshot-copy ${SAMPLES_DIR}/utils
	${INSTALL_DATA} ${WRKSRC}/utils/rsnaptar ${SAMPLES_DIR}/utils
	${INSTALL_DATA} ${WRKSRC}/utils/*.pl ${SAMPLES_DIR}/utils
	${INSTALL_DATA} ${WRKSRC}/utils/*.sh ${SAMPLES_DIR}/utils
	${INSTALL_DATA} ${WRKSRC}/utils/rsnapshotdb/* ${SAMPLES_DIR}/utils/rsnapshotdb

.include <bsd.port.mk>
