# $OpenBSD: Makefile,v 1.7 2002/10/18 20:53:01 naddy Exp $

COMMENT=		"integrated email and PIM software for GNOME"
COMMENT-devguide=	"Evolution Developer's Guide"

VERSION=		1.0.8
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

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/evolution/1.0/}

MODULES=		gettext

BUILD_DEPENDS=		:bison-*:devel/bison \
			:db-3.1.17:databases/db \
			:scrollkeeper->=0.1.4:textproc/scrollkeeper
RUN_DEPENDS=		:db-3.1.17:databases/db \
			:scrollkeeper->=0.1.4:textproc/scrollkeeper
LIB_DEPENDS=		bonobo.2,bonobo-print.2,bonobox.2::x11/gnome/bonobo \
			bonobo_conf::x11/gnome/bonobo-conf \
			glade.5,glade-gnome.5::devel/libglade,gnome \
			gnomecanvaspixbuf.1::graphics/gdk-pixbuf,-gnome \
			gtkhtml.21::www/gtkhtml

USE_X11=		Yes
USE_GMAKE=		Yes
YACC=			bison
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-db3=${LOCALBASE} \
			--with-krb5=/usr \
			--with-krb4=/usr \
			--disable-pilot-conduits \
			--disable-gtk-doc \
			--disable-nntp
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

pre-configure:
	@if pkg dependencies check evolution-\*; then \
		echo 1>&2 "+-------------------"; \
		echo 1>&2 "| Error: you must remove the existing evolution installation"; \
		echo 1>&2 "| before compiling this version. To fully remove run"; \
		echo 1>&2 "| these commands as user root"; \
		echo 1>&2 "|"; \
		echo 1>&2 "|	  pkg_delete -f `pkg_info -e 'evolution-*'`"; \
		echo 1>&2 "|"; \
		echo 1>&2 "+-------------------"; \
		exit 1; \
	fi

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	find ${PREFIX}/share/evolution/default_user -perm 444 -exec chmod 644 {} \;
	chmod u-s ${PREFIX}/sbin/camel-lock-helper

.include <bsd.port.mk>
