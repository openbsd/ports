# $OpenBSD: Makefile,v 1.29 2017/03/27 19:19:27 gonzalo Exp $

COMMENT =		high-performance HTTP accelerator

DISTNAME =		varnish-5.1.1
CATEGORIES =		www

SHARED_LIBS =		varnishapi	1.0

HOMEPAGE =		http://www.varnish-cache.org/

MAINTAINER =		Jim Razmus II <jim@openbsd.org> \
			Gonzalo L. Rodriguez <gonzalo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c execinfo m ncursesw pcre pthread readline termcap

MASTER_SITES =		http://repo.varnish-cache.org/source/

BUILD_DEPENDS =		textproc/py-docutils
LIB_DEPENDS = 		devel/pcre
# The internal backtrace implementation fails to build with -Werror on arm/hppa
LIB_DEPENDS +=		devel/libexecinfo

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

TEST_TARGET =		check

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/varnish
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/varnish
	cp ${WRKDIST}${SYSCONFDIR}/{example,builtin}.vcl \
	    ${PREFIX}/share/examples/varnish
	rm -f ${PREFIX}/lib/varnish/{vmods,}/*.{a,la}

.include <bsd.port.mk>
