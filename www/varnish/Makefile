# $OpenBSD: Makefile,v 1.62 2021/10/03 21:14:21 kn Exp $

COMMENT =		high-performance HTTP accelerator

DISTNAME =		varnish-7.0.0

CATEGORIES =		www

SHARED_LIBS =		varnishapi      4.0     # 3.0

HOMEPAGE =		https://www.varnish-cache.org/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>, \
			Gonzalo L. Rodriguez <gonzalo@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://varnish-cache.org/_downloads/

EXTRACT_SUFX =		.tgz

WANTLIB += c curses execinfo m pcre2-8 pthread readline

MODULES =		lang/python
MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	lib/libvcc/{vsc,vmod}tool.py

BUILD_DEPENDS =		textproc/py-docutils${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR}
LIB_DEPENDS =		devel/pcre2

USE_GMAKE =		Yes
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16
AUTORECONF =		./autogen.sh
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}" \
			PYTHON="${MODPY_BIN}"
CONFIGURE_ARGS =	--docdir=${PREFIX}/share/examples/varnish

TEST_TARGET =		check

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-debugging-symbols
.endif

# XXX ${WRKSRC}/doc/sphinx/Makefile.{am,in}
pre-build:
	echo 'readlink -f "$$@"' >| ${WRKDIR}/bin/realpath
	chmod +x ${WRKDIR}/bin/realpath

post-install:
	${SUBST_PROGRAM} ${FILESDIR}/varnishreload ${PREFIX}/bin/varnishreload
	${SUBST_MAN} ${FILESDIR}/varnishreload.1 ${PREFIX}/man/man1/varnishreload.1
	rm -f ${PREFIX}/lib/varnish/{vmods,}/*.{a,la}

.include <bsd.port.mk>
