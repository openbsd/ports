# $OpenBSD: Makefile,v 1.1.1.1 2010/03/29 21:12:20 dcoppa Exp $

COMMENT =	console client for pandora

VERSION =	0.20100313
DISTNAME =	PromyLOPh-pianobar-34ff325
PKGNAME =	pianobar-${VERSION}
CATEGORIES =	audio

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

HOMEPAGE =	http://6xq.net/html/00/17.html
MASTER_SITES =	http://www.phil.uu.nl/~lievisse/distfiles/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m pthread

MODULES =	devel/cmake

LIB_DEPENDS =	ao::audio/libao \
		faad::audio/faad \
		mad::audio/libmad

CONFIGURE_ARGS= -DMAN_INSTALL_DIR="${PREFIX}/man"

NO_REGRESS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pianobar
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/pianobar
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pianobar
	${INSTALL_DATA} ${WRKSRC}/contrib/config-example \
		${PREFIX}/share/examples/pianobar/config

.include <bsd.port.mk>
