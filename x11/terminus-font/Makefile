# $OpenBSD: Makefile,v 1.14 2006/07/17 08:46:13 bernd Exp $

COMMENT=		"fixed width fonts especially for long hacking sessions"

DISTNAME=		terminus-font-4.20
CATEGORIES=		x11

HOMEPAGE=		http://www.is-vn.bg/hamster/jimmy-en.html

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.is-vn.bg/hamster/ \
			http://legonet.org/~salan/distfiles/

CONFIGURE_STYLE=	simple
NO_REGRESS=		Yes
USE_X11=		Yes

ALL_TARGET=		pcf

FONTDIR=		${PREFIX}/lib/X11/fonts/terminus

do-install:
	${GZIP_CMD} ${WRKSRC}/*.pcf
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.pcf.gz ${FONTDIR}
	cd ${FONTDIR} && ${X11BASE}/bin/mkfontdir ;\
	sed -e 's/.pcf.gz//' fonts.dir|grep terminus > fonts.alias-terminus

.include <bsd.port.mk>
