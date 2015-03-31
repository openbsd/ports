# $OpenBSD: Makefile,v 1.4 2015/03/31 09:45:09 ajacoutot Exp $

COMMENT=	Arabeyes TrueType Arabic fonts

V=		2.0
DISTNAME=	ttf-arabeyes_$V.orig
PKGNAME=	arabeyes-ttf-$V
REVISION=	1
CATEGORIES=	fonts x11

HOMEPAGE=	http://www.arabeyes.org/project.php?proj=Khotot

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_DEBIAN:=main/t/ttf-arabeyes/}

NO_BUILD=		Yes
NO_TEST=		Yes

WRKDIST=		${WRKDIR}/ttf-arabeyes-$V
FONTSDIR=		${PREFIX}/share/fonts/arabeyes

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts/*.ttf ${FONTSDIR}

.include <bsd.port.mk>
