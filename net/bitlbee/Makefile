# $OpenBSD: Makefile,v 1.15 2004/11/13 13:39:40 alek Exp $

COMMENT=	"IRC proxy to connect to AIM, ICQ, Jabber, MSN and Yahoo"

DISTNAME=		bitlbee-0.91
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net

HOMEPAGE=		http://bitlbee.org

MAINTAINER=		Andrew Dalgleish <openbsd@ajd.net.au>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


MASTER_SITES=		http://get.bitlbee.org/src/

DB_DIR?=		/var/bitlbee
ETCDIR=			${SYSCONFDIR}/bitlbee
EXAMPLEDIR=		${PREFIX}/share/examples/bitlbee
DOCS=			${WRKSRC}/doc/user-guide.html
DOCDIR=			${PREFIX}/share/doc/bitlbee/

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		glib-2.0.0.0::devel/glib2

# I am told gnutls does not build on all arches
# This is only used for connecting to MSN, so I've added a no_msn FLAVOR
FLAVORS=		no_msn
FLAVOR?=

.if ${FLAVOR:L:Mno_msn}
CONFIGURE_ARGS+=	--msn=0
.else
LIB_DEPENDS+=		gnutls.8::security/gnutls
.endif


CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--bindir=${PREFIX}/libexec \
			--mandir=${PREFIX}/man \
			--config=${DB_DIR} \
			--etcdir=${ETCDIR} \
			--tcpd=0

USE_GMAKE=		Yes
MAKE_ENV=		CC="${CC}"
FAKE_FLAGS=		${DESTDIRNAME}=${WRKINST} ETCDIR=${EXAMPLEDIR}
FAKE_TARGET=		install install-etc

NO_REGRESS=		Yes

# Make sure we use the system snprintf
post-extract:
	@rm -f ${WRKSRC}/protocols/snprintf.c

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${DOCS} ${DOCDIR}

.include <bsd.port.mk>
