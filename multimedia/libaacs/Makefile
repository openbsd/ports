# $OpenBSD: Makefile,v 1.9 2015/05/22 11:31:17 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		AACS support library for Blu-ray playback

V =			0.5.0
DISTNAME =		libaacs-${V}
REVISION =		0

CATEGORIES =		multimedia

HOMEPAGE =		http://www.videolan.org/developers/libaacs.html
MASTER_SITES =		http://download.videolan.org/pub/videolan/libaacs/${V}/ \
			ftp://ftp.videolan.org/pub/videolan/libaacs/${V}/
EXTRACT_SUFX =		.tar.bz2

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Free speech issue
PERMIT_PACKAGE_FTP =	Yes

SHARED_LIBS +=		aacs	1.0	# 2.0

WANTLIB +=		c gcrypt gpg-error pthread

MODULES =		devel/gettext

LIB_DEPENDS =		security/libgcrypt
BUILD_DEPENDS =		devel/bison>=2.3p2 \
			devel/flex

MAKE_FLAGS =		CFLAGS="${CFLAGS}"

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
YACC =			${LOCALBASE}/bin/bison -y
CONFIGURE_ENV =		ac_cv_prog_LEX="${LOCALBASE}/bin/gflex"

.include <bsd.port.mk>
