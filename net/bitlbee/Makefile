COMMENT=		IRC proxy to connect to AIM, ICQ, Jabber and Yahoo

# XXX -stable package builds can't detect PKGSPEC updates properly;
# if backporting an update to stable, ensure all ports depending on
# this are bumped and that -current is same/newer version than -stable
V=			3.6
DISTNAME=		bitlbee-$V
PKGSPEC=		bitlbee-=$V
CATEGORIES=		net
REVISION=		2

HOMEPAGE=		https://bitlbee.org/

MAINTAINER=		Tom Doherty <tom@singlesecond.com>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c m pthread glib-2.0 gmodule-2.0 ssl crypto intl

SITES=			https://get.bitlbee.org/src/

DB_DIR?=		/var/bitlbee
ETCDIR=			${SYSCONFDIR}/bitlbee
EXAMPLEDIR=		${PREFIX}/share/examples/bitlbee
DOCS=			${WRKSRC}/doc/user-guide/user-guide.html
DOCDIR=			${PREFIX}/share/doc/bitlbee/

BUILD_DEPENDS=		textproc/docbook-xsl \
			textproc/libxslt
MODULES=		lang/python
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_2}
MODPY_RUNDEP=		No
LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--bindir=${PREFIX}/libexec \
			--mandir=${PREFIX}/man \
			--config=${DB_DIR} \
			--pidfile=${DB_DIR}/bitlbee.pid \
			--etcdir=${ETCDIR} \
			--ssl=openssl \
			--pie=0

USE_GMAKE=		Yes
MAKE_ENV=		"CC=${CC}" "CFLAGS=${CFLAGS}"
FAKE_FLAGS=		ETCDIR=${EXAMPLEDIR}
FAKE_TARGET=		install install-etc install-dev
SUBST_VARS=		DB_DIR

FLAVORS =		libpurple otr
FLAVOR ?=

.if ${FLAVOR:Mlibpurple}
CONFIGURE_ARGS +=	--purple=1
LIB_DEPENDS +=		net/pidgin,-libpurple
WANTLIB +=		purple
.endif
.if ${FLAVOR:Motr}
CONFIGURE_ARGS +=	--otr=1
LIB_DEPENDS +=		security/libotr>=4.0.0 security/libgcrypt
WANTLIB +=		gcrypt gpg-error otr
.endif

NO_TEST=		Yes

# don't hide compile command lines
pre-configure:
	find ${WRKSRC} -name Makefile -exec \
	    perl -pi -e 's,@\$$\(CC\),\$$(CC),g' {} +

post-build:
	${MAKE_PROGRAM} -C ${WRKSRC}/doc/user-guide user-guide.html

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${DOCS} ${DOCDIR}

.include <bsd.port.mk>
