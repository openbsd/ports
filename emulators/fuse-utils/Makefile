# $OpenBSD: Makefile,v 1.8 2006/09/24 18:17:33 grange Exp $

COMMENT=		"Free Unix Spectrum Emulator utilities"

DISTNAME=		fuse-utils-0.7.0
CATEGORIES=		emulators
HOMEPAGE=		http://fuse-emulator.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c gcrypt

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

BUILD_DEPENDS=		::devel/gettext
LIB_DEPENDS=		spectrum.>=3::devel/libspectrum

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
