# $OpenBSD: Makefile,v 1.4 2003/12/09 17:44:23 marcm Exp $

COMMENT=		"Bitstream Vera TrueType fonts"

VERSION=		1.10
DISTNAME=		ttf-bitstream-vera-${VERSION}
PKGNAME=		bitstream-vera-fonts-${VERSION}
CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org/fonts/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# Custom Licence enclosed/X11-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/ttf-bitstream-vera/1.10/}

NO_BUILD=		Yes
NO_REGRESS=		Yes

FONTSDIR?=		${PREFIX}/lib/X11/fonts/bitstream-vera

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}; \
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTSDIR}; \
	${X11BASE}/bin/mkfontscale ${FONTSDIR}; \
	${X11BASE}/bin/mkfontdir ${FONTSDIR};
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bitstream-vera-fonts/; \
	${INSTALL_DATA} ${WRKSRC}/local.conf ${PREFIX}/share/examples/bitstream-vera-fonts/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bitstream-vera-fonts/; \
	${INSTALL_DATA} ${WRKSRC}/*.TXT ${PREFIX}/share/doc/bitstream-vera-fonts/

.include <bsd.port.mk>
