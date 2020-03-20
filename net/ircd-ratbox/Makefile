# $OpenBSD: Makefile,v 1.31 2020/03/20 16:44:26 naddy Exp $

COMMENT =	advanced, stable and fast irc server

DISTNAME =	ircd-ratbox-3.0.10
CATEGORIES =	net
MASTER_SITES =	${HOMEPAGE}download/
EXTRACT_SUFX =	.tar.bz2
REVISION =	3

HOMEPAGE =	http://www.ratbox.org/

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB =		c crypto ltdl m pthread sqlite3 ssl z

LIB_DEPENDS =		databases/sqlite3 \
			devel/libtool,-ltdl

CONFDIR =		${SYSCONFDIR}/ircd-ratbox
LOGDIR =		${LOCALSTATEDIR}/log/ircd-ratbox

SUBST_VARS +=		CONFDIR LOGDIR

LIBTOOL_FLAGS =		--tag=disable-static
CONFIGURE_STYLE =	gnu
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
	@find ${PREFIX}/lib -name '*.la' -delete

.include <bsd.port.mk>
