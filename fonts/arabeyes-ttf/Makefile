# $OpenBSD: Makefile,v 1.1.1.1 2011/07/19 09:16:06 jasper Exp $

COMMENT=	Arabeyes TrueType Arabic fonts

V=		2.0
DISTNAME=	ttf-arabeyes_$V.orig
PKGNAME=	arabeyes-ttf-$V
REVISION=	0
CATEGORIES=	fonts x11

HOMEPAGE=	http://www.arabeyes.org/project.php?proj=Khotot

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.nl.debian.org/debian/pool/main/t/ttf-arabeyes/

NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/ttf-arabeyes-$V
FONTSDIR=		${PREFIX}/lib/X11/fonts/arabeyes

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts/*.ttf ${FONTSDIR}

.include <bsd.port.mk>
