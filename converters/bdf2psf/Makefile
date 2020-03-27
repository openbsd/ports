# $OpenBSD: Makefile,v 1.7 2020/03/27 11:37:18 fcambus Exp $

COMMENT =	convert a BDF font to PSF format for the Linux console

V =		1.195
DISTNAME =	console-setup_${V}
PKGNAME =	bdf2psf-${V}
EXTRACT_SUFX =	.tar.xz

CATEGORIES =	converters

HOMEPAGE =	https://packages.debian.org/sid/bdf2psf

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_DEBIAN:=main/c/console-setup/}

WRKDIST =	${WRKDIR}/console-setup

NO_BUILD =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/Fonts/bdf2psf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/bdf2psf.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/bdf2psf
	${INSTALL_DATA} ${WRKSRC}/Fonts/*.{equivalents,set} \
		${PREFIX}/share/bdf2psf
	${INSTALL_DATA_DIR} ${PREFIX}/share/bdf2psf/fontsets
	${INSTALL_DATA} ${WRKSRC}/Fonts/fontsets/* \
		${PREFIX}/share/bdf2psf/fontsets

.include <bsd.port.mk>
