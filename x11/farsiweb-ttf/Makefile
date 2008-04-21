# $OpenBSD: Makefile,v 1.1.1.1 2008/04/21 09:30:21 jasper Exp $

COMMENT=		FarsiWeb free TrueType Farsi fonts

V=			0.4
DISTNAME=		ttf-farsiweb_$V.orig
PKGNAME=		farsiweb-ttf-$V
CATEGORIES=		x11

HOMEPAGE=		http://www.farsiweb.ir/wiki/Persian_fonts

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://ftp.nl.debian.org/debian/pool/main/t/ttf-farsiweb/

NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/ttf-farsiweb-$V
FONTSDIR=		${PREFIX}/lib/X11/fonts/farsiweb

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTSDIR}

.include <bsd.port.mk>
