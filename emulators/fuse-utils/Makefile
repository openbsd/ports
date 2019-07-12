# $OpenBSD: Makefile,v 1.33 2019/07/12 20:46:08 sthen Exp $

COMMENT=		Free Unix Spectrum Emulator utilities

DISTNAME=		fuse-utils-1.4.3
CATEGORIES=		emulators
HOMEPAGE=		http://fuse-emulator.sourceforge.net/
REVISION=		0

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC audiofile bz2 c gcrypt glib-2.0 gpg-error iconv
WANTLIB += intl jpeg m ogg pcre png pthread spectrum ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

LIB_DEPENDS=		devel/libspectrum \
			graphics/jpeg \
			graphics/png

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
