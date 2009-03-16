# $OpenBSD: Makefile,v 1.14 2009/03/16 17:52:52 sthen Exp $

COMMENT= 	synchronize IMAP4 and maildir mailboxes

DISTNAME=	isync-1.0.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	mail
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=isync/}

HOMEPAGE=	http://isync.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl

LIB_DEPENDS=		lib/db4/db.>=4:db->=4,<5:databases/db/v4

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=		 CFLAGS="${CFLAGS} -I${LOCALBASE}/include/db4"	\
			 LDFLAGS=-L${LOCALBASE}/lib/db4			\
			 LDADD=-ldb

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/isync
	${INSTALL_DATA} ${WRKSRC}/src/mbsyncrc.sample ${PREFIX}/share/examples/isync

.include <bsd.port.mk>
