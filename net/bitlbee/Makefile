# $OpenBSD: Makefile,v 1.8 2003/12/31 16:03:30 naddy Exp $

COMMENT=		"IRC proxy to connect to ICQ, AOL, MSN and Jabber"

DISTNAME=		bitlbee-0.83
CATEGORIES=		net
#PKGNAME=		${DISTNAME}p1

HOMEPAGE=		http://bitlbee.org

MAINTAINER=		Han Boetes <han@linux-mandrake.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


MASTER_SITES=		http://get.bitlbee.org/src/
MASTER_SITES0=		http://get.bitlbee.org/fink/
PATCHFILES=		bitlbee-0.83-1-darwin.patch:0
PATCH_DIST_STRIP=	-p1

DB_DIR?=		/var/bitlbee
ETCDIR=			${SYSCONFDIR}/bitlbee
EXAMPLEDIR=		${PREFIX}/share/examples/bitlbee
DOCS=			${FILESDIR}/user-guide.html
DOCDIR=			${PREFIX}/share/doc/bitlbee/
BITLBEEUSER=		_bitlbee
BITLBEEGROUP=		_bitlbee
ID=			509
SUBST_VARS=		DB_DIR ETCDIR EXAMPLEDIR DOCDIR \
			BITLBEEUSER BITLBEEGROUP ID

LIB_DEPENDS=		soup-2.0.0.0::devel/libsoup

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

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${DOCS} ${DOCDIR}

.include <bsd.port.mk>
