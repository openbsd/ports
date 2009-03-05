# $OpenBSD: Makefile,v 1.32 2009/03/05 16:12:27 naddy Exp $
# $FreeBSD: Makefile,v 1.1 1999/12/22 14:53:53 jedgar Exp $

COMMENT=		optimizer for PNG files

DISTNAME=		pngcrush-1.6.15
CATEGORIES=		graphics

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pmt/}

HOMEPAGE=		http://pmt.sourceforge.net/pngcrush/

MAINTAINER=		Benoit Lecocq <blq@arcane-labs.net>

# custom, see pngcrush.c
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MAKE_FLAGS=		CC="${CC}" LD="${CC}" CFLAGS="${CFLAGS} -I."

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pngcrush ${PREFIX}/bin

.include <bsd.port.mk>
