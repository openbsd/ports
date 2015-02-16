# $OpenBSD: Makefile,v 1.13 2015/02/16 22:57:11 naddy Exp $

COMMENT=		remote filesystem snapshot utility

DISTNAME=		rsnapshot-1.3.1
REVISION=		2
CATEGORIES=		net sysutils

HOMEPAGE=		http://www.rsnapshot.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.rsnapshot.org/downloads/

BUILD_DEPENDS=		net/rsync
RUN_DEPENDS=		net/rsync \
			devel/p5-Lchown

PKG_ARCH=		*
NO_TEST=		Yes

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--sysconfdir=${SYSCONFDIR}

SAMPLES_DIR=		${PREFIX}/share/examples/rsnapshot
SUBST_VARS=		SAMPLES_DIR

FAKE_FLAGS=		sysconfdir=${SAMPLES_DIR}

pre-build:
	${SUBST_CMD} ${WRKSRC}/rsnapshot.1 ${WRKSRC}/README \
		${WRKSRC}/rsnapshot-program.pl

post-install:
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}/utils
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}/utils/rsnapshotdb
	${INSTALL_DATA} ${WRKSRC}/README ${SAMPLES_DIR}
	${INSTALL_DATA} ${WRKSRC}/utils/README ${SAMPLES_DIR}/utils
	${INSTALL_DATA} ${WRKSRC}/utils/rsnapshot-copy ${SAMPLES_DIR}/utils
	${INSTALL_DATA} ${WRKSRC}/utils/rsnaptar ${SAMPLES_DIR}/utils
	${INSTALL_DATA} ${WRKSRC}/utils/*.pl ${SAMPLES_DIR}/utils
	${INSTALL_DATA} ${WRKSRC}/utils/*.sh ${SAMPLES_DIR}/utils
	${INSTALL_DATA} ${WRKSRC}/utils/rsnapshotdb/* ${SAMPLES_DIR}/utils/rsnapshotdb

.include <bsd.port.mk>
