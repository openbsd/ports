# $OpenBSD: Makefile,v 1.13 2009/01/07 18:00:20 grange Exp $

COMMENT=		Free Unix Spectrum Emulator utilities

DISTNAME=		fuse-utils-0.10.0.1
CATEGORIES=		emulators
HOMEPAGE=		http://fuse-emulator.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

WANTLIB=		c m stdc++ z gcrypt bz2 glib-2.0 gpg-error pcre \
			audiofile

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

LIB_DEPENDS=		spectrum.>=5::devel/libspectrum

CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes

.include <bsd.port.mk>
