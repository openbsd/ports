# $OpenBSD: Makefile,v 1.3 2014/01/21 15:41:27 syl Exp $

COMMENT =		fuse-based cryptographic filesystem
DISTNAME =		encfs-1.7.4
REVISION =		0
SHARED_LIBS = 		encfs	0.0	# 6.1
CATEGORIES =		security
HOMEPAGE =		http://www.arg0.net/encfs

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		boost_filesystem boost_serialization boost_system c \
			crypto fuse m pthread rlog ssl stdc++

MASTER_SITES =		http://encfs.googlecode.com/files/
EXTRACT_SUFX =		.tgz

MODULES =		devel/gettext
LIB_DEPENDS =		devel/boost \
			devel/rlog
			
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-boost-serialization=boost_serialization \
			--with-boost-filesystem=boost_filesystem \
			--with-boost-system=boost_system

# TODO convert code to use utimensat() instead of lutimes()
CFLAGS =		-Dlutimes=utimes \
			-D_DIRENT_HAVE_D_TYPE

do-test:
	${WRKSRC}/encfs/test

.include <bsd.port.mk>
