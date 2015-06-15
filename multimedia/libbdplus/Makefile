# $OpenBSD: Makefile,v 1.1.1.1 2015/06/15 07:15:29 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		BD+ support library for Blu-ray playback

V =			0.1.2
DISTNAME =		libbdplus-${V}

CATEGORIES =		multimedia

HOMEPAGE =		http://www.videolan.org/developers/libbdplus.html
MASTER_SITES =		https://download.videolan.org/pub/videolan/libbdplus/${V}/ \
			ftp://ftp.videolan.org/pub/videolan/libbdplus/${V}/
EXTRACT_SUFX =		.tar.bz2

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Free speech issue
PERMIT_PACKAGE_FTP =	Yes

SHARED_LIBS +=		bdplus	0.0	# 1.0

WANTLIB +=		gcrypt gpg-error pthread

MODULES =		devel/gettext

LIB_DEPENDS =		security/libgcrypt

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-optimizations \
			--without-libaacs

.include <bsd.port.mk>
