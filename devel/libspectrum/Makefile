# $OpenBSD: Makefile,v 1.1.1.1 2002/12/16 14:29:55 grange Exp $

COMMENT=		"ZX Spectrum emulator file format library"

DISTNAME=		libspectrum-0.1.0
CATEGORIES=		devel

HOMEPAGE=	http://www.srcf.ucam.org/~pak21/spectrum/libspectrum.html

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.srcf.ucam.org/~pak21/spectrum/

LIB_DEPENDS=		glib.1.2::devel/glib

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libspectrum
	${INSTALL_DATA} ${WRKSRC}/doc/libspectrum.txt \
	    ${PREFIX}/share/doc/libspectrum

.include <bsd.port.mk>
