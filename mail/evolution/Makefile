# $OpenBSD: Makefile,v 1.9 2003/04/10 15:59:49 marcm Exp $

COMMENT=		"integrated email and PIM software for GNOME"
COMMENT-devguide=	"Evolution Developer's Guide"

V=			1.2
VERSION=		${V}.4
DISTNAME=		evolution-${VERSION}
FULLPKGNAME-devguide=	evolution-devguide-${VERSION}
CATEGORIES=    		mail x11

HOMEPAGE=		http://www.ximian.com/products/ximian_evolution/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:S@$@sources/evolution/${V}/@}
MASTER_SITES0=		${HOMEPAGE}/update/snapshot/

DISTFILES=		${DISTNAME}.tar.gz \
			db-3.1.17.tar.gz:0

MODULES=		gettext

BUILD_DEPENDS=		:bison-*:devel/bison \
			:scrollkeeper->=0.3.11:textproc/scrollkeeper
RUN_DEPENDS=		:scrollkeeper->=0.3.11:textproc/scrollkeeper
LIB_DEPENDS=		bonobo.2,bonobo-print.2,bonobox.2::x11/gnome/bonobo \
			bonobo_conf::x11/gnome/bonobo-conf \
			glade.5,glade-gnome.5::devel/libglade,gnome \
			gnomecanvaspixbuf.1::graphics/gdk-pixbuf,-gnome \
			gtkhtml-1.1.3.2::www/gtkhtml \
			soup.5::devel/soup

DB3_WRKDIST=		${WRKDIR}/db-3.1.17
DB3_WRKBUILD=		${DB3_WRKDIST}/build_unix
DB3_CONFIGURE_SCRIPT=	../dist/configure

USE_X11=		Yes
USE_GMAKE=		Yes
YACC=			bison
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-db3-includes=${DB3_WRKBUILD}
CONFIGURE_ARGS+=	--with-db3-libs=${DB3_WRKBUILD}
CONFIGURE_ARGS+=	--with-krb5=/usr
CONFIGURE_ARGS+=	--with-krb4=/usr
#CONFIGURE_ARGS+=	--enable-ipv6
CONFIGURE_ARGS+=	--enable-openssl
CONFIGURE_ARGS+=	--disable-pilot-conduits
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=		ldap
FLAVOR?=

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+=		ldap.2,lber.2::databases/openldap

CONFIGURE_ARGS+=	--with-openldap=${LOCALBASE}
.if defined(NO_SHARED_LIBS)
CONFIGURE_ARGS+=	--with-static-ldap=yes
.else
CONFIGURE_ARGS+=	--with-static-ldap=no
.endif
.endif

MULTI_PACKAGES=		-devguide
SUBPACKAGE?=

.if defined(PACKAGING)
.  if ${SUBPACKAGE} == "-devguide"
RUN_DEPENDS=
LIB_DEPENDS=
.  endif
.endif

post-patch:
	@cd ${DB3_WRKDIST} && patch -s < ${PATCHDIR}/db3-patch-dist_configure
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

pre-configure:
	@if pkg dependencies check evolution-\*; then \
		if pkg dependencies check ${DISTNAME}; then \
			:; \
		else \
			echo 1>&2 "+-------------------"; \
			echo 1>&2 "| Error: you must remove the existing evolution installation"; \
			echo 1>&2 "| before compiling this version. To fully remove run"; \
			echo 1>&2 "| these commands as user root"; \
			echo 1>&2 "|"; \
			echo 1>&2 "|	  pkg_delete -f `pkg_info -e 'evolution-*'`"; \
			echo 1>&2 "|"; \
			echo 1>&2 "+-------------------"; \
			exit 1; \
		fi; \
	fi
	@cd ${DB3_WRKBUILD} && ./${DB3_CONFIGURE_SCRIPT} ${DB3_CONFIGURE_ARGS}
	@cd ${DB3_WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKEFILE} ${ALL_TARGET}

post-install:
	find ${PREFIX}/share/evolution/default_user -perm 444 -exec chmod 644 {} \;
	chmod u-s ${PREFIX}/sbin/camel-lock-helper

.include <bsd.port.mk>
