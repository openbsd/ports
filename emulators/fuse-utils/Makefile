# $OpenBSD: Makefile,v 1.2 2003/10/17 06:28:07 grange Exp $

COMMENT=		"Free Unix Spectrum Emulator utilities"

DISTNAME=		fuse-utils-0.6.1
CATEGORIES=		emulators

HOMEPAGE=		http://www.srcf.ucam.org/~pak21/spectrum/fuse.html

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.srcf.ucam.org/~pak21/spectrum/ \
		ftp://ftp.worldofspectrum.org/pub/sinclair/emulators/unix/

LIB_DEPENDS=		glib.1.2::devel/glib spectrum.2::devel/libspectrum

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
