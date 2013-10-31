# $OpenBSD: Makefile,v 1.20 2013/10/31 01:25:07 brad Exp $

SHARED_ONLY =	Yes

COMMENT =	advanced, stable and fast irc server

DISTNAME =	ircd-ratbox-3.0.8
REVISION =	0
CATEGORIES =	net
MASTER_SITES =	${HOMEPAGE}download/
EXTRACT_SUFX =	.tar.bz2

HOMEPAGE =	http://www.ratbox.org/

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =		c crypto ltdl sqlite3 ssl z

LIB_DEPENDS =		devel/libtool,-ltdl

CONFDIR =		${SYSCONFDIR}/ircd-ratbox
LOGDIR =		/var/log/ircd-ratbox

SUBST_VARS +=		CONFDIR LOGDIR

LIBTOOL_FLAGS =		--tag=disable-static
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.68
CONFIGURE_ARGS =	--enable-openssl=/usr \
			--with-confdir=${CONFDIR} \
			--with-logdir=${LOGDIR} \
			--with-helpdir=${PREFIX}/share/ircd-ratbox/help \
			--with-moduledir=${PREFIX}/lib/ircd-ratbox/modules \
			--enable-services \
			--with-sqlite3=${LOCALBASE} \
			--with-zlib-path=/usr
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

# Hack to make the nick length configurable at build time
NICKLEN ?=
.if ${NICKLEN}
FLAVORS =		nicklen_${NICKLEN}
FLAVOR =		nicklen_${NICKLEN}
CONFIGURE_ARGS +=	--with-nicklen=${NICKLEN}
.endif

DOCS =		README.cidr_bans challenge.txt modeg.txt \
		modes.txt monitor.txt server-version-info services.txt \
		tgchange.txt

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/doc/example.conf \
	    ${WRKSRC}/doc/example.efnet.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ircd-ratbox
	${INSTALL_DATA} ${WRKINST}${CONFDIR}/* \
	    ${PREFIX}/share/examples/ircd-ratbox
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ircd-ratbox
	cd ${WRKSRC}/doc && ${INSTALL_DATA} ${DOCS} \
	    ${PREFIX}/share/doc/ircd-ratbox
	@find ${PREFIX}/lib -name '*.la' -print | xargs rm

.include <bsd.port.mk>
