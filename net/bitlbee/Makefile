# $OpenBSD: Makefile,v 1.1.1.1 2003/04/16 18:51:08 wilfried Exp $
COMMENT=		"IRC-proxy to connect to icq, aol, msn and jabber"

DISTNAME=		bitlbee-0.73
CATEGORIES=		net

HOMEPAGE=		http://www.lintux.cx/bitlbee.html

MAINTAINER=		Han Boetes <han@linux-mandrake.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.lintux.cx/downloads/

DB_DIR?=		/var/bitlbee
DOCS=			${FILESDIR}/user-guide.html
DOCDIR=			${PREFIX}/share/doc/bitlbee/
SUBST_VARS=		DB_DIR DOCDIR

USE_GMAKE=		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--bindir=${PREFIX}/libexec \
			--mandir=${PREFIX}/man \
			--config=${DB_DIR}

LIB_DEPENDS=		glib::devel/glib

MAKE_ENV=		CC="${CC}"

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${DOCS} ${DOCDIR}

.include <bsd.port.mk>
