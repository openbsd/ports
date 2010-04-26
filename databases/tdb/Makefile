# $OpenBSD: Makefile,v 1.4 2010/04/26 17:22:06 sthen Exp $

COMMENT=	trivial database library

DISTNAME=	tdb-1.2.1
CATEGORIES=	databases
SHARED_LIBS+=	tdb	2.0

MAINTAINER=    	Nicholas Marriott <nicm@users.sourceforge.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

HOMEPAGE=	http://tdb.samba.org/
MASTER_SITES=	http://samba.org/ftp/tdb/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --disable-python
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
MAKE_FLAGS=	TDB_SOLIB=libtdb.so.${LIBtdb_VERSION} \
		TDB_SONAME=libtdb.so.${LIBtdb_VERSION}

INSTALL_TARGET=	installdirs installbin installheaders installlibs

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tdb
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/tdb/

.include <bsd.port.mk>
