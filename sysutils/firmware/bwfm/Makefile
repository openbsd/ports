# $OpenBSD: Makefile,v 1.3 2018/09/21 08:40:26 sthen Exp $

FW_DRIVER=	bwfm
FW_VER=		20171125
DISTNAME=	linux-firmware-${FW_VER}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	Patrick Wildt <patrick@blueri.se>

HOMEPAGE=	https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/brcm

do-install:
	${INSTALL_DATA} ${WRKSRC}/brcm/*bin ${PREFIX}/firmware/
	${INSTALL_DATA} ${WRKSRC}/LICENCE.broadcom_bcm43xx \
	    ${PREFIX}/firmware/bwfm-license

gitup:
	[ -d ${WRKOBJDIR}/linux-firmware ] || git clone --depth 1 https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
	cd ${WRKOBJDIR}/linux-firmware; git pull; \
	d=`git show -s --format=%cd --date=format:%Y%m%d`; \
	f=${FULLDISTDIR}/linux-firmware-$$d.tar.xz; \
	git archive --format=tar --prefix=linux-firmware-$$d/ HEAD | xz > $$f; \
	ls -l $$f

.include <bsd.port.mk>
