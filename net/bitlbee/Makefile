# $OpenBSD: Makefile,v 1.6 2003/10/16 15:00:17 naddy Exp $

COMMENT=		"IRC proxy to connect to ICQ, AOL, MSN and Jabber"

DISTNAME=		bitlbee-0.81
CATEGORIES=		net

HOMEPAGE=		http://bitlbee.org

MAINTAINER=		Han Boetes <han@linux-mandrake.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


MASTER_SITES=		http://get.bitlbee.org/src/

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
