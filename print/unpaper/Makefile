# $OpenBSD: Makefile,v 1.1.1.1 2010/07/17 07:59:37 ajacoutot Exp $

COMMENT=	post-processing tool for scanned paper sheets

DISTNAME=	unpaper-0.3

CATEGORIES=	print graphics

HOMEPAGE=	http://unpaper.berlios.de/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m

MASTER_SITES=	${MASTER_SITE_BERLIOS:=unpaper/}

NO_REGRESS=	Yes

do-build:
	cd ${WRKSRC} && \
		${CC} ${CFLAGS} -lm -o unpaper src/unpaper.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/unpaper ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unpaper
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/unpaper

.include <bsd.port.mk>
