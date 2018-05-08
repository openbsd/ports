# $OpenBSD: Makefile,v 1.2 2018/05/08 23:22:51 jca Exp $

COMMENT =		libev-based high performance TLS proxy

DISTNAME =		hitch-1.4.8
REVISION =		0

CATEGORIES =		security

# BSD
PERMIT_PACKAGE_CDROM =	Yes

HOMEPAGE =		https://hitch-tls.org

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

MASTER_SITES =		https://hitch-tls.org/source/

# uses pledge()
WANTLIB =		c crypto ev ssl

BUILD_DEPENDS =		textproc/py-docutils
LIB_DEPENDS =		devel/libev>=4
TEST_DEPENDS =		net/curl

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS='${CPPFLAGS} -I${LOCALBASE}/include' \
			LDFLAGS='${LDFLAGS} -L${LOCALBASE}/lib'

TEST_IS_INTERACTIVE =	connects to http://hitch-tls.org, \
			leaves parse_proxy_v2 running in background

post-patch:
	${SUBST_CMD} ${WRKSRC}/{hitch.conf.man.rst,src/configuration.c}

post-configure:
	ln -sf ${WRKSRC}/src/cfg_{lex,parser}.[ch] ${WRKBUILD}/src/

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs/*.md ${PREFIX}/share/doc/hitch/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hitch/
	mv ${PREFIX}/share/{doc,examples}/hitch/hitch.conf.example

.include <bsd.port.mk>
