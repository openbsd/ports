# $OpenBSD: Makefile,v 1.2 2008/08/28 12:50:38 sthen Exp $

COMMENT=	IEEE 802.1X supplicant

DISTNAME=	wpa_supplicant-0.5.8
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security net

HOMEPAGE=	http://hostap.epitest.fi/wpa_supplicant/

MAINTAINER=	Reyk Floeter <reyk@openbsd.org>	

# Dual BSD/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ssl crypto pcap

MASTER_SITES=	http://hostap.epitest.fi/releases/

USE_GMAKE=	Yes
NO_REGRESS=	Yes

MAN5=	wpa_supplicant.conf.5
MAN8=	wpa_background.8 wpa_cli.8 wpa_passphrase.8 wpa_supplicant.8

EXAMPLEDIR=	${PREFIX}/share/examples/wpa_supplicant

post-install:

.for m in ${MAN5}
	${INSTALL_MAN} ${WRKBUILD}/doc/docbook/${m} \
		${PREFIX}/man/man5/
.endfor

.for n in ${MAN8}
	${INSTALL_MAN} ${WRKBUILD}/doc/docbook/${n} \
		${PREFIX}/man/man8/
.endfor

	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA}  ${WRKBUILD}/wpa_supplicant.conf \
		${EXAMPLEDIR}/wpa_supplicant.conf.dist
	${INSTALL_DATA}  ${FILESDIR}/wpa_supplicant.conf \
		${EXAMPLEDIR}/wpa_supplicant.conf

.include <bsd.port.mk>
