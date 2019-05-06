# $OpenBSD: Makefile,v 1.43 2019/05/06 09:23:15 kn Exp $

COMMENT =		high-performance HTTP accelerator

DISTNAME =		varnish-6.2.0

CATEGORIES =		www

SHARED_LIBS =		varnishapi      2.0     # 2.2

HOMEPAGE =		https://www.varnish-cache.org/

MAINTAINER =		Jim Razmus II <jim@openbsd.org> \
			Gonzalo L. Rodriguez <gonzalo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://varnish-cache.org/_downloads/

EXTRACT_SUFX =		.tgz

WANTLIB += c curses execinfo m pcre pthread readline

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	lib/libvcc/{vsc,vmod}tool.py

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool \
			textproc/py-docutils${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR}
LIB_DEPENDS =		devel/pcre
# The internal backtrace implementation fails to build with -Werror on arm/hppa
LIB_DEPENDS +=		devel/libexecinfo

USE_GMAKE =		Yes
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}" \
			PYTHON="${MODPY_BIN}"

TEST_TARGET =		check

do-gen:
	cd ${WRKSRC} && ${AUTOCONF_ENV} ./autogen.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/varnish
	${INSTALL_DATA} ${WRKDIST}${SYSCONFDIR}/{example,builtin}.vcl \
	    ${PREFIX}/share/examples/varnish
	rm -f ${PREFIX}/lib/varnish/{vmods,}/*.{a,la}

.include <bsd.port.mk>
