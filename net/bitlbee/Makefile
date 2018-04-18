# $OpenBSD: Makefile,v 1.66 2018/04/18 09:19:23 kn Exp $

COMMENT=		IRC proxy to connect to ICQ, Jabber and Yahoo

V=			3.5.1
DISTNAME=		bitlbee-$V
PKGSPEC=		bitlbee-=$V
REVISION=		4
CATEGORIES=		net

HOMEPAGE=		https://bitlbee.org/

MAINTAINER=		Tom Doherty <tom@singlesecond.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pthread glib-2.0 gmodule-2.0 ssl crypto intl

MASTER_SITES=		https://get.bitlbee.org/src/

DB_DIR?=		/var/bitlbee
ETCDIR=			${SYSCONFDIR}/bitlbee
EXAMPLEDIR=		${PREFIX}/share/examples/bitlbee
DOCS=			${WRKSRC}/doc/user-guide/user-guide.html
DOCDIR=			${PREFIX}/share/doc/bitlbee/

MODULES=		lang/python
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP=		No

BUILD_DEPENDS=		textproc/docbook-xsl \
			textproc/libxslt
LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--prefix=${PREFIX} \
			--bindir=${PREFIX}/libexec \
			--mandir=${PREFIX}/man \
			--config=${DB_DIR} \
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
LIB_DEPENDS +=		security/libotr>=4.0.0 \
			security/libgcrypt
WANTLIB +=		gcrypt gpg-error otr
.endif

NO_TEST=		Yes

# don't hide compile command lines
pre-configure:
	find ${WRKSRC} -name Makefile -exec sed -i 's,@\($$(CC)\),\1,' {} +

post-build:
	${MAKE_PROGRAM} -C ${DOCS:H} ${DOCS:T}

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${DOCS} ${DOCDIR}

.include <bsd.port.mk>
