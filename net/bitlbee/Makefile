# $OpenBSD: Makefile,v 1.42 2011/12/30 17:24:24 okan Exp $

COMMENT=		IRC proxy to connect to AIM, ICQ, Jabber, MSN and Yahoo

DISTNAME=		bitlbee-3.0.4
CATEGORIES=		net

HOMEPAGE=		http://bitlbee.org/

MAINTAINER=		Okan Demirmen <okan@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB +=		c pthread glib-2.0 gmodule-2.0 gnutls>=13
WANTLIB +=		gcrypt gpg-error

MASTER_SITES=		http://get.bitlbee.org/src/

MODULES=		devel/gettext

DB_DIR?=		/var/bitlbee
ETCDIR=			${SYSCONFDIR}/bitlbee
EXAMPLEDIR=		${PREFIX}/share/examples/bitlbee
DOCS=			${WRKSRC}/doc/user-guide/user-guide.html
DOCDIR=			${PREFIX}/share/doc/bitlbee/

LIB_DEPENDS=		devel/glib2 \
			security/gnutls \
			security/libgcrypt

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--bindir=${PREFIX}/libexec \
			--mandir=${PREFIX}/man \
			--config=${DB_DIR} \
			--etcdir=${ETCDIR} \
			--ssl=gnutls

USE_GMAKE=		Yes
MAKE_ENV=		"CC=${CC}" "CFLAGS=${CFLAGS}"
FAKE_FLAGS=		ETCDIR=${EXAMPLEDIR}
FAKE_TARGET=		install install-etc
SUBST_VARS=		DB_DIR

FLAVORS =		libpurple otr
FLAVOR ?=

.if ${FLAVOR:L:Mlibpurple}
CONFIGURE_ARGS +=	--purple=1
LIB_DEPENDS +=		net/pidgin,-libpurple \
			devel/silc-toolkit \
			net/meanwhile \
			net/libgadu
WANTLIB +=		purple
.endif
.if ${FLAVOR:L:Motr}
CONFIGURE_ARGS +=	--otr=1                                                
LIB_DEPENDS +=		security/libotr                                        
WANTLIB +=		otr
.endif

NO_REGRESS=		Yes

# don't hide compile command lines
pre-configure:
	find ${WRKSRC} -name Makefile | \
	    xargs perl -pi -e 's,@\$$\(CC\),\$$(CC),g'

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${DOCS} ${DOCDIR}

.include <bsd.port.mk>
