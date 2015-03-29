# $OpenBSD: Makefile,v 1.10 2015/03/29 12:28:21 ajacoutot Exp $

COMMENT=	trivial database library

DISTNAME=	tdb-1.2.7
REVISION=	2
CATEGORIES=	databases
SHARED_LIBS+=	tdb	3.0

MAINTAINER=	Nicholas Marriott <nicm@openbsd.org>

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
