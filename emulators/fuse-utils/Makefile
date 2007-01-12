# $OpenBSD: Makefile,v 1.9 2007/01/12 08:44:31 steven Exp $

COMMENT=		"Free Unix Spectrum Emulator utilities"

DISTNAME=		fuse-utils-0.7.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		emulators
HOMEPAGE=		http://fuse-emulator.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

WANTLIB=		c z gcrypt bz2 glib-2.0 gpg-error

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

LIB_DEPENDS=		spectrum.>=3::devel/libspectrum

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
