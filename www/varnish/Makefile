# $OpenBSD: Makefile,v 1.33 2017/09/18 14:09:53 gonzalo Exp $

COMMENT =		high-performance HTTP accelerator

DISTNAME =		varnish-5.2.0

CATEGORIES =		www

SHARED_LIBS =		varnishapi	1.0

HOMEPAGE =		https://www.varnish-cache.org/

MAINTAINER =		Jim Razmus II <jim@openbsd.org> \
			Gonzalo L. Rodriguez <gonzalo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =          https://varnish-cache.org/_downloads/

EXTRACT_SUFX =		.tgz

WANTLIB += c execinfo m ncursesw pcre pthread readline termcap

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool \
			textproc/py-docutils
LIB_DEPENDS = 		devel/pcre
# The internal backtrace implementation fails to build with -Werror on arm/hppa
LIB_DEPENDS +=		devel/libexecinfo

WRKDIST =		${WRKDIR}/${DISTNAME}
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

TEST_TARGET =		check

post-patch:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/varnish
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/varnish
	cp ${WRKDIST}${SYSCONFDIR}/{example,builtin}.vcl \
	    ${PREFIX}/share/examples/varnish
	rm -f ${PREFIX}/lib/varnish/{vmods,}/*.{a,la}

.include <bsd.port.mk>
