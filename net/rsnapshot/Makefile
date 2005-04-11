# $OpenBSD: Makefile,v 1.2 2005/04/11 13:00:08 robert Exp $

COMMENT=		"remote filesystem snapshot utility"

DISTNAME=		rsnapshot-1.2.1
CATEGORIES=		net
HOMEPAGE=		http://www.rsnapshot.org/

MAINTAINER=		Sigfred Haversen <bsdlist@mumak.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.rsnapshot.org/downloads/

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::net/rsync

PKG_ARCH=		*
NO_REGRESS=		Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--sysconfdir=${SYSCONFDIR}

SAMPLES_DIR=		${PREFIX}/share/examples/rsnapshot

post-build:
	sed 's,!!SAMPLES_DIR!!,${SAMPLES_DIR},g; \
	     s,!!SYSCONFDIR!!,${SYSCONFDIR},g' \
		< ${WRKSRC}/rsnapshot.1 \
		> ${WRKBUILD}/rsnapshot.1
	sed 's,!!SAMPLES_DIR!!,${SAMPLES_DIR},g; \
	     s,!!SYSCONFDIR!!,${SYSCONFDIR},g' \
		< ${WRKSRC}/README \
		> ${WRKBUILD}/README
	mv ${WRKBUILD}/rsnapshot ${WRKBUILD}/rsnapshot.tmp
	sed 's,!!SAMPLES_DIR!!,${SAMPLES_DIR},g; \
	     s,!!SYSCONFDIR!!,${SYSCONFDIR},g' \
		< ${WRKBUILD}/rsnapshot.tmp \
		> ${WRKBUILD}/rsnapshot

do-install:
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}/utils
	${INSTALL_PROGRAM} ${WRKBUILD}/rsnapshot ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/rsnapshot.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKBUILD}/rsnapshot.conf.default ${SAMPLES_DIR}
	${INSTALL_DATA} ${WRKBUILD}/README ${SAMPLES_DIR}
	${INSTALL_DATA} ${WRKSRC}/utils/* ${SAMPLES_DIR}/utils

.include <bsd.port.mk>
