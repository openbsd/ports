# $OpenBSD: Makefile,v 1.17 2019/04/02 09:49:04 naddy Exp $

COMMENT =	applied math library
CATEGORIES =	math devel
DISTNAME =	libqalculate-0.9.7
REVISION =	5
HOMEPAGE =	http://qalculate.sourceforge.net/

SHARED_LIBS =	qalculate		0.0	# 5.0

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += c cln glib-2.0 gmp iconv intl lzma m ncurses pcre pthread readline
WANTLIB += ${COMPILER_LIBCXX} xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qalculate/}

MODULES =	textproc/intltool

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =	devel/cln \
		devel/glib2 \
		textproc/libxml

# Without recreating Makefile, shell globs in docs/reference/Makefile are
# not expanded, and "fake" and "test" stages fail.
# And just running "good" autoconf is not enough, it whines.
# So we have to re-run automake, too.

USE_LIBTOOL =		gnu
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${WRKSRC} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
AUTOCONF_VERSION =	2.67
AUTOMAKE_VERSION =	1.11

SUBST_VARS +=		DISTNAME

do-gen:
	cd ${WRKSRC} && ${AUTOCONF_ENV} autoreconf -fi

.include <bsd.port.mk>
