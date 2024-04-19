BROKEN-hppa =		undefined reference to __sync_fetch_and_add_4
BROKEN-sparc64 =	infinite loop or aborts during build

COMMENT =		Prolog for the real world

V =			9.2.3
DISTNAME =		swipl-$V
PKGNAME =		swi-prolog-$V
CATEGORIES =		lang

SHARED_LIBS =		swipl	1.0 # 9.2

MODULES = 		devel/cmake

HOMEPAGE =		http://www.swi-prolog.org/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xext Xft Xinerama Xpm Xt archive c crypto
WANTLIB += curses db edit fontconfig form freetype gmp iodbc jpeg
WANTLIB += m ossp-uuid pcre2-8 pthread readline ssl z

SITES =			${HOMEPAGE}download/stable/src/ \
			https://distfiles.sigtrap.nl/

PORTHOME=${WRKDIR}
CONFIGURE_ARGS +=	-DSWIPL_INSTALL_MANPAGES=man/man1 \
			-DSWIPL_PACKAGES_PYTHON=OFF \
			-DSWIPL_PACKAGES_JAVA=OFF \
			-DSWIPL_PACKAGES_QT=OFF \
			-DSWIPL_PACKAGES_YAML=OFF \
			-DCCACHE=OFF

# Help cmake find bdb4.
#
# The first line should be enough, but for some reason HAVE_DB4_DB_H doesn't
# get defined properly in config.h.
CONFIGURE_ARGS +=	-DBDB_INCLUDE_DIR=${TRUEPREFIX}/include \
			-DCMAKE_C_FLAGS=-DHAVE_DB4_DB_H

BUILD_DEPENDS =		${RUN_DEPENDS}
BUILD_DEPENDS +=	shells/bash
LIB_DEPENDS =		devel/gmp \
			graphics/jpeg \
			devel/uuid \
			databases/db/v4 \
			archivers/libarchive \
			databases/iodbc \
			devel/pcre2

post-install:
	mv ${PREFIX}/lib/swipl/doc ${PREFIX}/share/doc/swipl

# Test failures.
#
# This SSL one is innocuous. It's just a difference in the way LibreSSL reports
# the error:
#
# 80: ERROR: /usr/local/pobj/swi-prolog-9.2.3/swipl-9.2.3/packages/ssl/test_ssl.pl:688:
# 80: ERROR:     test ssl_certificates:'Certificate is not intended for SSL':
# 80: ERROR: wrong answer (compared using ==)
# 80: ERROR:     Expected: [bad_certificate_use,verified]:true
# 80: ERROR:     Got:      []:error(error(ssl_error('1400A410','lib(20)','func(10)','reason(1040)'),A))
#
# Then some float/rational failures:
# https://github.com/SWI-Prolog/swipl-devel/issues/1267

.include <bsd.port.arch.mk>
.include <bsd.port.mk>
