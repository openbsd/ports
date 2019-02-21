# $OpenBSD: Makefile,v 1.76 2019/02/21 22:32:31 sthen Exp $

COMMENT =	retrieve files from the web via HTTP, HTTPS and FTP

DISTNAME =	wget-1.20.1
CATEGORIES =	net

HOMEPAGE =	https://www.gnu.org/software/wget/
MAINTAINER =	Nam Nguyen <namn@berkeley.edu>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto iconv idn2 intl pcre2-8 psl ssl unistring z

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/gettext-tools

LIB_DEPENDS =		converters/libunistring \
			devel/gettext \
			devel/libidn2 \
			devel/pcre2 \
			net/libpsl

MASTER_SITES =		${MASTER_SITE_GNU:=wget/}

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
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
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
