COMMENT =	GNU dictionary server

V =		2.10
DISTNAME =	dico-$V
REVISION =	0

SHARED_LIBS +=  dico                      0.0 # 2.0

CATEGORIES =	net

HOMEPAGE =	https://puszcza.gnu.org.ua/software/dico/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto curses gsasl iconv idn intl lber-2.4 ldap-2.4
WANTLIB += ltdl pam pcre readline sasl2 ssl z

MASTER_SITES =		${MASTER_SITE_GNU:=dico/}

MODULES =		lang/python
LIB_DEPENDS =		databases/openldap \
			devel/gettext,-runtime \
			devel/libtool,-ltdl \
			devel/pcre \
			security/libgsasl \
			security/openpam

# soelim(1)
BUILD_DEPENDS +=	textproc/groff

USE_GMAKE =		Yes

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
