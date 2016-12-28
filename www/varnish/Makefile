# $OpenBSD: Makefile,v 1.25 2016/12/28 21:31:08 jca Exp $

# execinfo.c:144: warning: unsupported argument to '__builtin_return_address' + Werror
NOT_FOR_ARCHS =	arm hppa

COMMENT =		high-performance HTTP accelerator

DISTNAME =		varnish-4.1.3
CATEGORIES =		www

SHARED_LIBS =		varnishapi	1.0

HOMEPAGE =		http://www.varnish-cache.org/

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncursesw pcre pthread readline termcap

MASTER_SITES =		http://repo.varnish-cache.org/source/

BUILD_DEPENDS =		textproc/py-docutils
LIB_DEPENDS = 		devel/pcre

CONFIGURE_STYLE =	gnu

TEST_TARGET =		check

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/varnish
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/varnish
	cp ${WRKDIST}${SYSCONFDIR}/{example,builtin}.vcl \
	    ${PREFIX}/share/examples/varnish
	rm -f ${PREFIX}/lib/varnish/{vmods,}/*.{a,la}

.include <bsd.port.mk>
