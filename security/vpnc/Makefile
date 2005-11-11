# $OpenBSD: Makefile,v 1.8 2005/11/11 19:38:07 sturm Exp $

COMMENT=		"client for Cisco 3000 VPN concentrators"

DISTNAME=		vpnc-0.3.3
CATEGORIES=		security net

HOMEPAGE=		http://www.unix-ag.uni-kl.de/~massar/vpnc/

MAINTAINER=		Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c gpg-error iconv intl

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		gcrypt.12:libgcrypt->=1.2:security/libgcrypt

USE_GMAKE=		Yes
NO_REGRESS=		Yes

do-configure:
	@perl -pi -e "s,/etc,${SYSCONFDIR},g" ${WRKSRC}/{README,config.c}
	@sed -e "s,%%PREFIX%%,${PREFIX},g" ${FILESDIR}/vpnc.sh > ${WRKBUILD}/vpnc.sh

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/vpnc ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vpnc
	${INSTALL_DATA} ${WRKBUILD}/README ${PREFIX}/share/doc/vpnc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vpnc
	${INSTALL_DATA} ${WRKBUILD}/vpnc.conf ${PREFIX}/share/examples/vpnc
	${INSTALL_DATA} ${WRKBUILD}/vpnc-script ${PREFIX}/share/examples/vpnc
	${INSTALL_DATA} ${WRKBUILD}/vpnc.sh ${PREFIX}/share/examples/vpnc

.include <bsd.port.mk>
