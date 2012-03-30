# $OpenBSD: Makefile,v 1.2 2012/03/30 13:35:42 phessler Exp $

SHARED_ONLY =		Yes

COMMENT =		AACS support library for Blu-ray playback

V =			0.3.1
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
PERMIT_DISTFILES_CDROM =Free speech issue
PERMIT_DISTFILES_FTP =	Yes

SHARED_LIBS +=		aacs	0.0	# 0.0

WANTLIB +=		gcrypt gpg-error pthread

MODULES =		devel/gettext

LIB_DEPENDS =		security/libgcrypt
BUILD_DEPENDS =		devel/bison \
			devel/flex

MAKE_FLAGS =		CFLAGS="${CFLAGS}"

CONFIGURE_STYLE =	gnu
USE_LIBTOOL =		yes
YACC =			${LOCALBASE}/bin/bison -y
CONFIGURE_ENV =		ac_cv_prog_LEX="${LOCALBASE}/bin/gflex"

.include <bsd.port.mk>
