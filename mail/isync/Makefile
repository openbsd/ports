# $OpenBSD: Makefile,v 1.20 2011/09/12 18:02:35 naddy Exp $

COMMENT= 	synchronize IMAP4 and maildir mailboxes

DISTNAME=	isync-1.0.4
REVISION =	2
CATEGORIES=	mail
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=isync/}

HOMEPAGE=	http://isync.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl lib/db4/db>=4

LIB_DEPENDS=		databases/db/v4

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=		 CFLAGS="${CFLAGS} -I${LOCALBASE}/include/db4"	\
			 LDFLAGS=-L${LOCALBASE}/lib/db4			\
			 LDADD=-ldb
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/isync
	${INSTALL_DATA} ${WRKSRC}/src/mbsyncrc.sample ${PREFIX}/share/examples/isync

.include <bsd.port.mk>
