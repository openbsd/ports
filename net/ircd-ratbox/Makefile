# $OpenBSD: Makefile,v 1.4 2009/10/19 21:01:16 fgsch Exp $

SHARED_ONLY =	Yes
COMMENT =	advanced, stable and fast irc server

DISTNAME =	ircd-ratbox-3.0.4
PKGNAME =	${DISTNAME}p1
CATEGORIES =	net
EXTRACT_SUFX =	.tar.bz2

HOMEPAGE =	http://www.ircd-ratbox.org/
MASTER_SITES =	${HOMEPAGE}download/testing/

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =		c crypto ssl z

LIB_DEPENDS =		sqlite3::databases/sqlite3 \
			ltdl:libltdl-*:devel/libtool,-ltdl

USE_LIBTOOL =		Yes
NO_REGRESS =		Yes

CONFDIR =		${SYSCONFDIR}/ircd-ratbox
LOGDIR =		/var/log/ircd-ratbox

SUBST_VARS +=		CONFDIR LOGDIR

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.62

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS =	--enable-ipv6 \
			--enable-openssl=/usr \
			--enable-kqueue \
			--with-confdir=${CONFDIR} \
			--with-logdir=${LOGDIR} \
			--with-rundir=/var/run/ircd-ratbox \
			--with-helpdir=${PREFIX}/share/ircd-ratbox/help \
			--with-moduledir=${PREFIX}/lib/ircd-ratbox/modules \
			--enable-services \
			--with-sqlite3=${LOCALBASE} \
			--with-zlib-path=/usr

# Hack to make the nick length configurable at build time
NICKLEN ?=
.if ${NICKLEN}
FLAVORS =		nicklen-${NICKLEN}
FLAVOR =		nicklen-${NICKLEN}
CONFIGURE_ARGS +=	--with-nicklen=${NICKLEN}
.endif

DOCS =		README.cidr_bans challenge.txt modeg.txt \
		modes.txt monitor.txt server-version-info services.txt \
		tgchange.txt

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/example.conf \
	    ${WRKSRC}/doc/example.efnet.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ircd-ratbox
	${INSTALL_DATA} ${WRKINST}${CONFDIR}/* \
	    ${PREFIX}/share/examples/ircd-ratbox
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ircd-ratbox
	cd ${WRKSRC}/doc && ${INSTALL_DATA} ${DOCS} \
	    ${PREFIX}/share/doc/ircd-ratbox

.include <bsd.port.mk>
