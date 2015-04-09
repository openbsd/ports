# $OpenBSD: Makefile,v 1.69 2015/04/09 11:32:04 jca Exp $

COMMENT =	retrieve files from the web via HTTP, HTTPS and FTP

DISTNAME =	wget-1.16.3
REVISION =	0
CATEGORIES =	net

HOMEPAGE =	https://www.gnu.org/software/wget/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto idn pcre psl ssl z
LIB_DEPENDS =		devel/libidn \
			devel/pcre \
			net/libpsl

MASTER_SITES =		${MASTER_SITE_GNU:=wget/}
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/gettext

# some regression tests require python3
MODULES +=		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No

TEST_DEPENDS =		www/p5-HTTP-Daemon ${MODPY_RUN_DEPENDS}
# Test-proxied-https-auth.px
TEST_DEPENDS +=		www/p5-HTTP-Message security/p5-IO-Socket-SSL

FAKE_FLAGS =		sysconfdir="${PREFIX}/share/examples/wget"

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-ssl=openssl
# hack to avoid depending on python3 at build time
CONFIGURE_ARGS +=	PYTHON="" \
			am_cv_pathless_PYTHON="${MODPY_BIN}"
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/build-aux

pre-build:
	@${SUBST_CMD} ${WRKSRC}/doc/wget.texi ${WRKSRC}/doc/sample.wgetrc

pre-test:
	@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python3

.include <bsd.port.mk>
