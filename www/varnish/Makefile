# $OpenBSD: Makefile,v 1.69 2022/01/26 15:35:28 kn Exp $

COMMENT =		high-performance HTTP accelerator

DISTNAME =		varnish-7.0.2

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
CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}" \
			PYTHON="${MODPY_BIN}"
CONFIGURE_ARGS =	--docdir=${PREFIX}/share/examples/varnish \
			--mandir=${PREFIX}/man \
			--localstatedir=${LOCALSTATEDIR}

TEST_TARGET =		check

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-debugging-symbols
.endif

# varnishd(1) default is localhost:0 (random port);
# set arbitrary port to make varnishreload(1) work out of the box.
MGTSOCK =		localhost:9999
# varnishd(1) default;  required for varnishreload(1)/varnishadm(1).
MGTSEC =		${LOCALSTATEDIR}/varnish/varnishd/_.secret

SUBST_VARS +=		MGTSOCK \
			MGTSEC

RC =			${FILESDIR}/varnishreload
MAN =			${RC}.1
RCINST =		${PREFIX}/bin/${RC:T}
MANINST =		${PREFIX}/man/man1/${MAN:T}

post-install:
	${SUBST_PROGRAM} ${RC} ${RCINST}
	@ksh -n ${RCINST}
	${SUBST_MAN} ${MAN} ${MANINST}
	@mandoc -Tlint -Wwarning ${MAN}
	rm -f ${PREFIX}/lib/varnish/{vmods,}/*.{a,la}

.include <bsd.port.mk>
