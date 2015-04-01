# $OpenBSD: Makefile,v 1.26 2015/04/01 08:26:03 czarkoff Exp $

COMMENT=	synchronize IMAP4 and maildir mailboxes

DISTNAME=	isync-1.1.2
CATEGORIES=	mail
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=isync/}

HOMEPAGE=	http://isync.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto ssl lib/db4/db>=4

LIB_DEPENDS=		databases/db/v4

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=		 CFLAGS="${CFLAGS} -I${LOCALBASE}/include/db4"	\
			 LDFLAGS=-L${LOCALBASE}/lib/db4

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/isync
	${INSTALL_DATA} ${WRKSRC}/src/mbsyncrc.sample ${PREFIX}/share/examples/isync

.include <bsd.port.mk>
