# $OpenBSD: Makefile,v 1.8 2020/06/26 17:41:14 kn Exp $

COMMENT =		libev-based high performance TLS proxy

V =			1.5.2
DISTNAME =		hitch-${V}
REVISION =		0

CATEGORIES =		security

# BSD
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://hitch-tls.org

MASTER_SITES =		https://hitch-tls.org/source/

WANTLIB =		c crypto ev ssl

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP =		No

BUILD_DEPENDS =		textproc/py-docutils${MODPY_FLAVOR}
LIB_DEPENDS =		devel/libev>=4
TEST_DEPENDS =		${PKGPATH}=${V} \
			net/curl

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-rst2man=rst2man${MODPY_BIN_SUFFIX}
CONFIGURE_ENV =		CPPFLAGS='${CPPFLAGS} -I${LOCALBASE}/include' \
			LDFLAGS='${LDFLAGS} -L${LOCALBASE}/lib'

TEST_IS_INTERACTIVE =	connects to hitch-tls.org:80 and 127.0.0.1:443

post-patch:
	${SUBST_CMD} ${WRKSRC}/{hitch.conf.man.rst,src/configuration.c}

post-configure:
	ln -sf ${WRKSRC}/src/cfg_{lex,parser}.[ch] ${WRKBUILD}/src/

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs/*.md ${PREFIX}/share/doc/hitch/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hitch/
	mv ${PREFIX}/share/{doc,examples}/hitch/hitch.conf.example

.include <bsd.port.mk>
