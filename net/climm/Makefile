# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:24 sthen Exp $

COMMENT =		simple, command-line multi messenger

DISTNAME =		climm-0.7.1
REVISION = 		2

CATEGORIES =		net

HOMEPAGE =		http://www.climm.org/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODTCL_WANTLIB}
WANTLIB += c gcrypt gnutls gpg-error iconv iksemel intl otr pthread

MASTER_SITES =		${HOMEPAGE}/source/
EXTRACT_SUFX =		.tgz

MODULES =		lang/tcl
LIB_DEPENDS =		security/libotr>=4.0.0 \
			security/gnutls \
			textproc/iksemel \
			${MODTCL_LIB_DEPENDS}

USE_GMAKE =		Yes

AUTOCONF_VERSION = 	2.65
CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	--enable-ssl=gnutls
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
MAKE_FLAGS =		noinst_LIBRARIES=""

pre-configure:
	@perl -pi -e 's/tcl8\./tcl8/g if /ac_lib/' ${WRKSRC}/configure

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/climm
	${INSTALL_DATA} ${WRKSRC}/{README,FAQ} ${PREFIX}/share/doc/climm
	cd ${WRKSRC}/doc && ${INSTALL_DATA} README.NONLINUX \
		README.i18n README.logformat README.ssl README.tcl \
		example-climm-event-script icq091.txt icqv7.txt \
		${PREFIX}/share/doc/climm

.include <bsd.port.mk>
