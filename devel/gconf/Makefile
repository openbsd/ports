# $OpenBSD: Makefile,v 1.8 2001/11/13 14:04:41 wilfried Exp $

COMMENT=		"configuration database system written for GNOME"
V=			1.0.7
DISTNAME=		GConf-${V}
CATEGORIES=		devel
NEED_VERSION=   	1.490
HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/GConf
EXTRACT_SUFX=           .tar.bz2

LIB_DEPENDS=		oaf.::x11/gnome/oaf \
			gnome.36::x11/gnome/libs

FLAVORS= 		guile db3
FLAVOR?=

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=		concurrent
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
.else
CONFIGURE_ARGS+=	--disable-db3
.endif

pre-extract:
	@if pkg dependencies check GConf-\*; then \
                if pkg dependencies check ${DISTNAME}; then \
                        :; \
                else \
                        echo 1>&2 "Error: you must remove your old GConf first"; \
                        exit 1; \
                fi; \
        fi;

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gconf; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gconf;

.include <bsd.port.mk>

.if ${FLAVOR:L:Mdb3}
.if !defined(NO_SHARED_LIBS)
SED_PLIST+=-e '/%%SHARED-db3%%/r${PKGDIR}/PFRAG.db3.shared' -e '//d'
.else
SED_PLIST+=-e '/%%SHARED-db3%%/d'
.endif
.endif
