# $OpenBSD: Makefile,v 1.29 2009/03/13 17:02:54 ajacoutot Exp $

COMMENT=	IRC proxy to connect to AIM, ICQ, Jabber, MSN and Yahoo

DISTNAME=		bitlbee-1.2.3
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net

HOMEPAGE=		http://bitlbee.org

MAINTAINER=		Andrew Dalgleish <openbsd@ajd.net.au>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		http://get.bitlbee.org/src/

MODULES=		devel/gettext

DB_DIR?=		/var/bitlbee
ETCDIR=			${SYSCONFDIR}/bitlbee
EXAMPLEDIR=		${PREFIX}/share/examples/bitlbee
DOCS=			${WRKSRC}/doc/user-guide/user-guide.html
DOCDIR=			${PREFIX}/share/doc/bitlbee/

LIB_DEPENDS=		glib-2.0,gmodule-2.0::devel/glib2 \
			gnutls.>=13::security/gnutls

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

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${DOCS} ${DOCDIR}

.include <bsd.port.mk>
