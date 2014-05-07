# $OpenBSD: Makefile,v 1.62 2014/05/07 15:42:15 kurt Exp $

COMMENT-java=	Java bindings for Berkeley DB, revision ${REV}

REV=		4
VERSION=	${REV}.6.21
PKGNAME-main=	${DISTNAME}
PKGSPEC-main =	db->=4,<5|db->=4v0,<5v0
PKGSPEC-java =  db-java->=4,<5|db-java->=4v0,<5v0
PKGSPEC-tcl =   db-tcl->=4,<5|db-tcl->=4v0,<5v0

PKGNAME-java=	db-java-${VERSION}
PKGNAME-tcl=	db-tcl-${VERSION}
EPOCH-main=	0
REVISION-main = 0
EPOCH-java=	0
EPOCH-tcl=	0
REVISION-java =	2
REVISION-tcl =	0
DBLIBDIR=	lib/db4

# XXX sync LIBdb_VERSION in x11/gnome/libgda
SHARED_LIBS +=	db                   5.0      # .0.0
SHARED_LIBS +=	db_cxx               6.0      # .0.0
SHARED_LIBS +=	db_java              5.0      # .0.0
SHARED_LIBS +=	db_tcl               6.0      # .0.0

MASTER_SITES0=	${HOMEPAGE}db/update/${VERSION}/
# patch 2 has converted DOS line-endings; no other change
# patches 1,3,4 are just mirrored
MASTER_SITES2=	http://spacehopper.org/mirrors/
PATCHFILES=	patch.${VERSION}.1:2 \
		patch.${VERSION}.2.fixed:2 \
		patch.${VERSION}.3:2 \
		patch.${VERSION}.4:2

CONFIGURE_STYLE=gnu

DEST_SUBDIR=	${REV}
WANTLIB=	c m stdc++

PSEUDO_FLAVORS=	no_java bootstrap
FLAVOR?= 
MULTI_PACKAGES = -java

RUN_DEPENDS-java=	${BUILD_PKGPATH} \
			${MODJAVA_RUN_DEPENDS}
RUN_DEPENDS-tcl=	${BUILD_PKGPATH}
WANTLIB-java=

SUBST_VARS=	LIBdb_tcl_VERSION

pre-configure:
	@perl -pi -e "s,db_(archive|checkpoint|deadlock|dump|hotbackup),db5_\0,g" ${WRKSRC}/test/*tcl
	@perl -pi -e "s,db_(load|printlog|recover|stat|upgrade|verify),db5_\0,g" ${WRKSRC}/test/*tcl
	@${SUBST_CMD} ${WRKSRC}/test/include.tcl

.include <bsd.port.mk>
