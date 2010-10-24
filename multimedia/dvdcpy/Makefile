# $OpenBSD: Makefile,v 1.6 2010/10/24 21:40:38 sthen Exp $

COMMENT=	copy selected info from dvd
DISTNAME=	ogmrip-0.10.0
PKGNAME=	dvdcpy-0.10.0
REVISION=	0
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ogmrip/}

HOMEPAGE=	http://ogmrip.sourceforge.net/

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c dvdread

WRKDIST=	${WRKDIR}/${DISTNAME}/dvdcpy

do-configure:
	ln -sf ${FILESDIR}/config.h ${WRKDIST}

LIB_DEPENDS=		::devel/libdvdread
USE_GROFF=		Yes
NO_REGRESS=		Yes

do-build:
	${CC} ${CFLAGS} -I${LOCALBASE}/include \
		${WRKSRC}/dvdcpy.c -o${WRKBUILD}/dvdcpy \
		-L${LOCALBASE}/lib -ldvdread
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dvdcpy ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/dvdcpy.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
