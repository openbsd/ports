# $OpenBSD: Makefile,v 1.3 2002/06/21 10:18:07 nino Exp $

COMMENT=		"integrated email and PIM software for GNOME"

DISTNAME=		evolution-1.0.7
CATEGORIES=    		mail x11
NEED_VERSION=		1.531

HOMEPAGE=		http://www.ximian.com/products/ximian_evolution/

MAINTAINER=		Marc Matteo <marcm@lectroid.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.ximian.com/pub/source/evolution/ \
			ftp://ftp.song.fi/mirrors/ftp.ximian.com/pub/source/evolution/ \
			ftp://rpmfind.net/linux/ximian/source/evolution/ \
			ftp://planetmirror.com/pub/ximian/pub/ximian/source/evolution/ \
			ftp://ftp.chg.ru/pub/X11/ximian/source/evolution/ \
			ftp://tux.cprm.net/pub/ximian/source/evolution/ \
			ftp://www.linux.org.ar/pub/ximian/source/evolution/ \
			ftp://mirror.pa.msu.edu/ximian/source/evolution/

MODULES=		gettext

BUILD_DEPENDS=		:gtar-*:archivers/gtar \
			:bison-*:devel/bison \
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
TAR=			gtar
YACC=			bison
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-db3=${LOCALBASE} \
			--with-krb5=/usr \
			--with-krb4=/usr \
			--enable-pilot-conduits=no \
			--disable-gtk-doc \
			--enable-nntp=no
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

post-install:
	find ${PREFIX}/share/evolution/default_user -perm 444 -exec chmod 644 {} \;

.include <bsd.port.mk>
