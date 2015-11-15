# $OpenBSD: Makefile,v 1.11 2015/11/15 11:55:59 jca Exp $

SHARED_ONLY =		Yes

COMMENT =		AACS support library for Blu-ray playback

V =			0.8.1
REVISION =		0
DISTNAME =		libaacs-${V}

CATEGORIES =		multimedia

HOMEPAGE =		http://www.videolan.org/developers/libaacs.html
MASTER_SITES =		https://download.videolan.org/pub/videolan/libaacs/${V}/ \
			ftp://ftp.videolan.org/pub/videolan/libaacs/${V}/
EXTRACT_SUFX =		.tar.bz2

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Free speech issue
PERMIT_PACKAGE_FTP =	Yes

SHARED_LIBS +=		aacs	2.0	# 5.1

WANTLIB +=		c gcrypt gpg-error

MODULES =		devel/gettext

LIB_DEPENDS =		security/libgcrypt
BUILD_DEPENDS =		devel/bison \
			devel/flex

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
YACC =			${LOCALBASE}/bin/bison -y
CONFIGURE_ARGS =	--disable-optimizations
CONFIGURE_ENV =		ac_cv_prog_LEX="${LOCALBASE}/bin/gflex"

.include <bsd.port.mk>
