# $OpenBSD: Makefile,v 1.7 2001/10/07 20:55:10 naddy Exp $

COMMENT=		"configuration database system written for GNOME"
V=			1.0.1
DISTNAME=		GConf-${V}
CATEGORIES=		devel
NEED_VERSION=   	1.473
HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/GConf

PATCH_LIST=             ${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
                        ${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
                        patch-*

LIB_DEPENDS=		oaf.::x11/gnome/oaf \
			gnome.36::x11/gnome/libs

FLAVORS= 		guile db3
FLAVOR?=

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	autoconf
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
CONFIGURE_ARGS+=	--enable-db3
.endif

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gconf; \
	cp -rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gconf; \
	mv ${PREFIX}/share/examples/gconf/gconf/1/path.example ${PREFIX}/share/examples/gconf/gconf/1/path

.include <bsd.port.mk>
