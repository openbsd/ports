# $OpenBSD: Makefile,v 1.27 2019/07/12 20:49:37 sthen Exp $

COMMENT=		client for Cisco 3000 VPN concentrators

DISTNAME=		vpnc-0.5.3
REVISION=		6
CATEGORIES=		security net

HOMEPAGE=		http://www.unix-ag.uni-kl.de/~massar/vpnc/

# GPLv2 / BSD
PERMIT_PACKAGE=	Yes

WANTLIB=  c gcrypt>=12 gpg-error iconv intl

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		security/libgcrypt>=1.2
RUN_DEPENDS=		net/vpnc-scripts

USE_GMAKE=		Yes
NO_TEST=		Yes

do-configure:
	@perl -pi -e "s,/etc,${SYSCONFDIR},g" ${WRKSRC}/{README,config.c}
	@cp ${FILESDIR}/split.sh ${WRKBUILD}/split.sh
	${SUBST_CMD} -m 555 -c ${FILESDIR}/vpnc.sh ${WRKBUILD}/vpnc.sh

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/vpnc ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKBUILD}/vpnc-disconnect ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vpnc
	${INSTALL_DATA} ${WRKBUILD}/README ${PREFIX}/share/doc/vpnc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vpnc
	${INSTALL_DATA} ${WRKBUILD}/vpnc.conf ${PREFIX}/share/examples/vpnc
	${INSTALL_DATA} ${WRKBUILD}/split.sh ${PREFIX}/share/examples/vpnc
	${INSTALL_DATA} ${WRKBUILD}/vpnc.sh ${PREFIX}/share/examples/vpnc
	${INSTALL_MAN} ${WRKBUILD}/vpnc.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
