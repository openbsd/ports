# $OpenBSD: Makefile,v 1.2 2003/10/17 06:25:49 grange Exp $

COMMENT=		"ZX Spectrum emulator file format library"

DISTNAME=		libspectrum-0.2.0.1
CATEGORIES=		devel

HOMEPAGE=	http://www.srcf.ucam.org/~pak21/spectrum/libspectrum.html

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.srcf.ucam.org/~pak21/spectrum/

LIB_DEPENDS=		glib.1.2::devel/glib gcrypt.6::security/libgcrypt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libspectrum
	${INSTALL_DATA} ${WRKSRC}/doc/libspectrum.txt \
	    ${PREFIX}/share/doc/libspectrum

.include <bsd.port.mk>
