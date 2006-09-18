# $OpenBSD: Makefile,v 1.20 2006/09/18 11:59:59 espie Exp $

COMMENT=	"IRC proxy to connect to AIM, ICQ, Jabber, MSN and Yahoo"

DISTNAME=		bitlbee-1.0.2
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net

HOMEPAGE=		http://bitlbee.org

MAINTAINER=		Andrew Dalgleish <openbsd@ajd.net.au>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c iconv intl crypto ssl

MASTER_SITES=		http://get.bitlbee.org/src/

DB_DIR?=		/var/bitlbee
ETCDIR=			${SYSCONFDIR}/bitlbee
EXAMPLEDIR=		${PREFIX}/share/examples/bitlbee
DOCS=			${WRKSRC}/doc/user-guide/user-guide.html
DOCDIR=			${PREFIX}/share/doc/bitlbee/

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		glib-2.0::devel/glib2

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--bindir=${PREFIX}/libexec \
			--mandir=${PREFIX}/man \
			--config=${DB_DIR} \
			--etcdir=${ETCDIR} \
			--ssl=openssl

USE_GMAKE=		Yes
MAKE_ENV=		"CC=${CC}" "CFLAGS=${CFLAGS}"
FAKE_FLAGS=		${DESTDIRNAME}=${WRKINST} ETCDIR=${EXAMPLEDIR}
FAKE_TARGET=		install install-etc
SUBST_VARS=		DB_DIR

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${DOCS} ${DOCDIR}

.include <bsd.port.mk>
