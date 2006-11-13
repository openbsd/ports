# $OpenBSD: Makefile,v 1.1.1.1 2006/11/13 23:59:36 msf Exp $

COMMENT=	"japanese true type fonts"

DISTNAME=	sazanami-20040629
PKGNAME=	${DISTNAME:S/-/-ttf-/}
CATEGORIES=	japanese x11
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=		http://wiki.fdiary.net/font/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE_JP:=efont/10087/}

USE_X11=		Yes
NO_BUILD=		Yes

PKG_ARCH=		*

INST_DIR=		${PREFIX}/lib/X11/fonts/sazanami/

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${INST_DIR}
	${X11BASE}/bin/mkfontscale ${INST_DIR}
	${X11BASE}/bin/mkfontdir ${INST_DIR}

.include <bsd.port.mk>
