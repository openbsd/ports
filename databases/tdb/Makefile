# $OpenBSD: Makefile,v 1.7 2013/03/21 08:45:14 ajacoutot Exp $

COMMENT=	trivial database library

DISTNAME=	tdb-1.2.7
CATEGORIES=	databases
SHARED_LIBS+=	tdb	3.0

MAINTAINER=	Nicholas Marriott <nicm@users.sourceforge.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

HOMEPAGE=	http://tdb.samba.org/
MASTER_SITES=	http://samba.org/ftp/tdb/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --disable-python
USE_GMAKE=	Yes
MAKE_FLAGS=	TDB_SOLIB=libtdb.so.${LIBtdb_VERSION} \
		TDB_SONAME=libtdb.so.${LIBtdb_VERSION}

INSTALL_TARGET=	installdirs installbin installheaders installlibs

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tdb
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/tdb/

.include <bsd.port.mk>
