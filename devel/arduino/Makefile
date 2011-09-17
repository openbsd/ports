# $OpenBSD: Makefile,v 1.1.1.1 2011/09/17 16:41:30 jasper Exp $

COMMENT=	open-source electronics prototyping platform

V=		22
PKGNAME=	arduino-${V}
DISTNAME=	arduino-00${V}-src
CATEGORIES=	devel
HOMEPAGE=	http://www.arduino.cc/

# arduino core + libraries: LGPLv2.1
# frontend application: GPLv2 (not shipped yet)
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://arduino.googlecode.com/files/

RUN_DEPENDS=	devel/avr/binutils \
		devel/avr/gcc \
		devel/avr/libc \
		devel/avrdude

BUILD_DEPENDS=	archivers/unzip

NO_BUILD=       Yes
NO_REGRESS=     Yes
PKG_ARCH=       *
WRKDIST=	${WRKDIR}/arduino-00${V}

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/{,doc,examples}/arduino
	@${SUBST_CMD} -c ${FILESDIR}/arduinoboot \
                ${PREFIX}/bin/arduinoboot
	@${SUBST_CMD} -c ${FILESDIR}/arduinoproject \
                ${PREFIX}/bin/arduinoproject
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/*
	@chmod ${BINMODE} ${PREFIX}/bin/*
	@${SUBST_CMD} -c ${FILESDIR}/BSDmakefile \
                ${PREFIX}/share/examples/arduino/BSDmakefile
	@${SUBST_CMD} -c ${FILESDIR}/template.pde \
                ${PREFIX}/share/examples/arduino/template.pde
	@chmod	a+r ${PREFIX}/share/examples/arduino/*
	@cp -r	${WRKSRC}/build/shared/examples/* \
		${PREFIX}/share/examples/arduino
	@cp -r	${WRKSRC}/hardware/arduino/* \
		${PREFIX}/share/arduino
	@cp -r	${WRKSRC}/libraries \
		${PREFIX}/share/arduino
	@cp -r	${WRKSRC}/{license,readme,todo}.txt \
		${PREFIX}/share/doc/arduino
	@unzip	-qnd ${PREFIX}/share/doc/arduino \
		${WRKSRC}/build/shared/reference.zip
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
	@find ${PREFIX} -type f -name \*.orig -exec rm '{}' \;

.include <bsd.port.mk>
