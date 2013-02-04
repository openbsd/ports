# $OpenBSD: Makefile,v 1.9 2013/02/04 10:04:44 sthen Exp $

COMMENT=	IEEE 802.1X supplicant

DISTNAME=	wpa_supplicant-2.0
REVISION=	1
CATEGORIES=	security net

HOMEPAGE=	http://hostap.epitest.fi/wpa_supplicant/

MAINTAINER=	Reyk Floeter <reyk@openbsd.org>

# Dual BSD/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c ssl crypto pcap pcsclite pthread

LIB_DEPENDS=	security/pcsc-lite

MASTER_SITES=	http://hostap.epitest.fi/releases/

USE_GMAKE=	Yes
USE_GROFF=	Yes
NO_REGRESS=	Yes
MAKE_FLAGS=	V=1
MAKE_ENV=	CFLAGS="${CFLAGS}" CC="${CC}"

WRKSRC=		${WRKDIST}/wpa_supplicant

EXAMPLEDIR=	${PREFIX}/share/examples/wpa_supplicant

post-extract:
	@${SUBST_CMD} -c ${FILESDIR}/config ${WRKSRC}/.config
	@cp ${FILESDIR}/driver_openbsd.c ${WRKSRC}/../src/drivers/

post-install:
	@#${INSTALL_PROGRAM} ${WRKBUILD}/wpa_priv ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKBUILD}/doc/docbook/*.5 ${PREFIX}/man/man5/
	${INSTALL_MAN} ${WRKBUILD}/doc/docbook/*.8 ${PREFIX}/man/man8/
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA}  ${WRKBUILD}/wpa_supplicant.conf \
		${EXAMPLEDIR}/wpa_supplicant.conf.dist
	${INSTALL_DATA}  ${FILESDIR}/wpa_supplicant.conf \
		${EXAMPLEDIR}/wpa_supplicant.conf

.include <bsd.port.mk>
