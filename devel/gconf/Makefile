# $OpenBSD: Makefile,v 1.3 2001/09/14 14:41:29 todd Exp $

COMMENT=		"configuration database system written for GNOME"
V=			1.0.1
DISTNAME=		GConf-${V}
CATEGORIES=		devel
NEED_VERSION=   	1.455
HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/GConf

LIB_DEPENDS=		oaf.::x11/gnome/oaf \
			gnome.36::x11/gnome/libs

FLAVORS= 		guile db3
FLAVOR?=

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if ${FLAVOR:L:Mguile}
BUILD_DEPENDS+= 	guile::lang/guile
RUN_DEPENDS+= 		guile::lang/guile
.else
CONFIGURE_ENV+= 	GUILE_CONFIG=/usr/bin/false
.endif

.if ${FLAVOR:L:Mdb3}
LIB_DEPENDS+= 		db::databases/db
CONFIGURE_ENV+= 	BDB_LIBS="-ldb"
.endif

post-install:
	install -d ${PREFIX}/share/gconf; \
	cp -r ${PREFIX}/../../etc/* ${PREFIX}/share/gconf; \
	mv ${PREFIX}/share/gconf/gconf/1/path.example ${PREFIX}/share/gconf/gconf/1/path

.include <bsd.port.mk>
