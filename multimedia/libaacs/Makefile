# $OpenBSD: Makefile,v 1.16 2019/07/14 00:39:38 naddy Exp $

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
PERMIT_PACKAGE =	Yes

WANTLIB =  c gcrypt gpg-error iconv intl

SHARED_LIBS +=		aacs	3.0	# 5.1


LIB_DEPENDS =		security/libgcrypt
BUILD_DEPENDS =		devel/bison

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
YACC =			${LOCALBASE}/bin/bison -y
CONFIGURE_ARGS =	--disable-optimizations

.include <bsd.port.mk>
