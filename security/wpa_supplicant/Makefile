# $OpenBSD: Makefile,v 1.5 2012/01/19 16:14:11 sthen Exp $

COMMENT=	IEEE 802.1X supplicant

DISTNAME=	wpa_supplicant-0.7.3
CATEGORIES=	security net

HOMEPAGE=	http://hostap.epitest.fi/wpa_supplicant/

MAINTAINER=	Reyk Floeter <reyk@openbsd.org>

# Dual BSD/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c ssl crypto pcap

MASTER_SITES=	http://hostap.epitest.fi/releases/

USE_GMAKE=	Yes
USE_GROFF=	Yes
NO_REGRESS=	Yes
MAKE_FLAGS=	V=1

WRKSRC=		${WRKDIST}/wpa_supplicant

MAN5=	wpa_supplicant.conf.5
MAN8=	wpa_background.8 wpa_cli.8 wpa_passphrase.8 wpa_supplicant.8

EXAMPLEDIR=	${PREFIX}/share/examples/wpa_supplicant

post-extract:
	cp ${FILESDIR}/config ${WRKSRC}/.config

post-install:
	${INSTALL_MAN} ${WRKBUILD}/doc/docbook/*.5 ${PREFIX}/man/man5/
	${INSTALL_MAN} ${WRKBUILD}/doc/docbook/*.8 ${PREFIX}/man/man8/
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA}  ${WRKBUILD}/wpa_supplicant.conf \
		${EXAMPLEDIR}/wpa_supplicant.conf.dist
	${INSTALL_DATA}  ${FILESDIR}/wpa_supplicant.conf \
		${EXAMPLEDIR}/wpa_supplicant.conf

.include <bsd.port.mk>
