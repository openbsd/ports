# $OpenBSD: Makefile,v 1.8 2012/05/03 06:51:24 ajacoutot Exp $

COMMENT=	copy selected info from DVD

DISTNAME=	ogmrip-0.10.0
PKGNAME=	dvdcpy-0.10.0
REVISION=	1
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ogmrip/}

HOMEPAGE=	http://ogmrip.sourceforge.net/

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c dvdread

WRKDIST=	${WRKDIR}/${DISTNAME}/dvdcpy

LIB_DEPENDS=		devel/libdvdread

NO_REGRESS=		Yes

do-configure:
	@ln -sf ${FILESDIR}/config.h ${WRKDIST}

do-build:
	${CC} ${CFLAGS} -I${LOCALBASE}/include \
		${WRKSRC}/dvdcpy.c -o${WRKBUILD}/dvdcpy \
		-L${LOCALBASE}/lib -ldvdread
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dvdcpy ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/dvdcpy.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
