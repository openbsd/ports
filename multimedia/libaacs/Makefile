# $OpenBSD: Makefile,v 1.15 2017/11/21 00:13:02 naddy Exp $

COMMENT =		AACS support library for Blu-ray playback

V =			0.9.0
DISTNAME =		libaacs-${V}
REVISION =		0

CATEGORIES =		multimedia

HOMEPAGE =		http://www.videolan.org/developers/libaacs.html
MASTER_SITES =		https://download.videolan.org/pub/videolan/libaacs/${V}/ \
			ftp://ftp.videolan.org/pub/videolan/libaacs/${V}/
EXTRACT_SUFX =		.tar.bz2

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Free speech issue
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =  c gcrypt gpg-error iconv intl

SHARED_LIBS +=		aacs	3.0	# 5.1


LIB_DEPENDS =		security/libgcrypt
BUILD_DEPENDS =		devel/bison

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
YACC =			${LOCALBASE}/bin/bison -y
CONFIGURE_ARGS =	--disable-optimizations

.include <bsd.port.mk>
