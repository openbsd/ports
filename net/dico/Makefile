# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:59 sthen Exp $

COMMENT =	GNU dictionary server

V =		2.9
DISTNAME =	dico-$V
REVISION =	2

SHARED_LIBS +=  dico                      0.0 # 2.0

CATEGORIES =	net

HOMEPAGE =	https://puszcza.gnu.org.ua/software/dico/

MAINTAINTER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto curses gsasl iconv idn intl lber-2.4 ldap-2.4
WANTLIB += ltdl pam pcre readline sasl2 ssl z

MASTER_SITES =		https://download.gnu.org.ua/pub/release/dico/

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
LIB_DEPENDS =		databases/openldap \
			devel/gettext,-runtime \
			devel/libtool,-ltdl \
			devel/pcre \
			security/libgsasl \
			security/openpam

# soelim(1)
BUILD_DEPENDS +=	textproc/groff

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib \
			PYTHON=python${MODPY_VERSION} \
			PYTHON_CONFIG=python${MODPY_VERSION}-config \
			DEFAULT_PIDFILE_NAME="${LOCALSTATEDIR}/dicod/dicod.pid"
CONFIGURE_ARGS =	--without-wordnet
LIBTOOL_FLAGS =		--tag=disable-static

SUBST_VARS +=		V

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dico
	${SUBST_CMD} -m 444 -c ${FILESDIR}/dicod.conf \
		${PREFIX}/share/examples/dico/dicod.conf

.include <bsd.port.mk>
