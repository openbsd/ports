# $OpenBSD: Makefile,v 1.7 2003/11/18 21:19:22 naddy Exp $

COMMENT=		"IRC proxy to connect to ICQ, AOL, MSN and Jabber"

DISTNAME=		bitlbee-0.82
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
MASTER_SITES0=		http://get.bitlbee.org/patches/
PATCHFILES=		bitlbee-0.82-segv.diff:0
PATCH_DIST_STRIP=	-p1

DB_DIR?=		/var/bitlbee
DOCS=			${FILESDIR}/user-guide.html
DOCDIR=			${PREFIX}/share/doc/bitlbee/
BITLBEEUSER=		_bitlbee
BITLBEEGROUP=		_bitlbee
ID=			509
SUBST_VARS=		DB_DIR DOCDIR BITLBEEUSER BITLBEEGROUP ID

LIB_DEPENDS=		soup-2.0.0.0::devel/libsoup

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--bindir=${PREFIX}/libexec \
			--mandir=${PREFIX}/man \
			--config=${DB_DIR} \
			--etcdir=${PREFIX}/share/bitlbee \
			--tcpd=0

USE_GMAKE=		Yes
MAKE_ENV=		CC="${CC}"
INSTALL_TARGET=		install install-etc

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${DOCS} ${DOCDIR}

.include <bsd.port.mk>
