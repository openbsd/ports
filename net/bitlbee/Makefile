# $OpenBSD: Makefile,v 1.5 2003/10/11 14:48:02 naddy Exp $

COMMENT=		"IRC proxy to connect to ICQ, AOL, MSN and Jabber"

DISTNAME=		bitlbee-0.80
CATEGORIES=		net
PKGNAME=		${DISTNAME}p1

HOMEPAGE=		http://bitlbee.org

MAINTAINER=		Han Boetes <han@linux-mandrake.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


MASTER_SITES=		http://get.bitlbee.org/src/
MASTER_SITES0=		http://get.bitlbee.org/patches/
PATCHFILES=		yahoo.diff:0
PATCH_DIST_STRIP=	-p1

DB_DIR?=		/var/bitlbee
DOCS=			${FILESDIR}/user-guide.html
DOCDIR=			${PREFIX}/share/doc/bitlbee/
BITLBEEUSER=		_bitlbee
BITLBEEGROUP=		_bitlbee
ID=			509
SUBST_VARS=		DB_DIR DOCDIR BITLBEEUSER BITLBEEGROUP ID


USE_GMAKE=		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--bindir=${PREFIX}/libexec \
			--mandir=${PREFIX}/man \
			--config=${DB_DIR} \
			--etcdir=${PREFIX}/share/bitlbee

LIB_DEPENDS=		glib::devel/glib

MAKE_ENV=		CC="${CC}"

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${DOCS} ${DOCDIR}

.include <bsd.port.mk>
