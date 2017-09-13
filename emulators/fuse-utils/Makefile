# $OpenBSD: Makefile,v 1.28 2017/09/13 09:14:22 fcambus Exp $

COMMENT=		Free Unix Spectrum Emulator utilities

DISTNAME=		fuse-utils-1.3.4
CATEGORIES=		emulators
HOMEPAGE=		http://fuse-emulator.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC audiofile bz2 c gcrypt glib-2.0 gpg-error iconv
WANTLIB += intl jpeg m ogg pcre png pthread spectrum ${COMPILER_LIBCXX} z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

LIB_DEPENDS=		devel/libspectrum \
			graphics/jpeg \
			graphics/png

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
