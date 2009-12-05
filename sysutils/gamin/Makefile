# $OpenBSD: Makefile,v 1.2 2009/12/05 17:03:40 ajacoutot Exp $

COMMENT-main=	file and directory monitoring system
COMMENT-server=	gamin file monitoring server
COMMENT-python=	gamin Python bindings

GNOME_PROJECT=	gamin
GNOME_VERSION=	0.1.10

PKGNAME-main=	libgamin-${GNOME_VERSION}
PKGNAME-server=	${DISTNAME}p0
PKGNAME-python=	py-gamin-${GNOME_VERSION}

SHARED_LIBS +=  gamin-1              0.0      # .1.10
SHARED_LIBS +=  fam                  1.0      # .0.0

CATEGORIES=	sysutils

HOMEPAGE=	http://www.gnome.org/~veillard/gamin/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-main

PSEUDO_FLAVORS=	no_python no_server
FLAVOR?=

MODULES=	x11/gnome
 
LIB_DEPENDS-main=
RUN_DEPENDS-main=

LIB_DEPENDS-server= ${LIB_DEPENDS} \
		glib-2.0.>=1800::devel/glib2

LIB_DEPENDS-python= gamin-1::sysutils/gamin,-main

.if !${FLAVOR:L:Mno_server}
MULTI_PACKAGES+= -server
MODULES+=	devel/gettext
CONFIGURE_ARGS+= --enable-server
WANTLIB-server += c pcre
.else
CONFIGURE_ARGS+= --disable-server
.endif

.if !${FLAVOR:L:Mno_python}
MULTI_PACKAGES+= -python
MODULES+=	lang/python
.else
CONFIGURE_ARGS+= --without-python
.endif

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu 
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--disable-docs \
		--disable-gtk-doc \
		--disable-inotify \
		--disable-dnotify \
		--disable-hurd_mach_notify \
		--enable-kqueue \
		--without-threads

.ifdef DEBUG
CONFIGURE_ARGS+= --enable-debug \
		--enable-debug-api
.else
CONFIGURE_ARGS+= --disable-debug
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{server/gam_conf.c,doc/config.html}

.if !${FLAVOR:L:Mno_server}
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gamin
	${INSTALL_DATA} ${FILESDIR}/gaminrc \
		${PREFIX}/share/examples/gamin
.endif

do-regress:
	@(cd ${WRKSRC}/tests && ${SETENV} ${MAKE_ENV} ${GMAKE} ${MAKE_FLAGS} \
		Makefile ${MAKE_ARGS} tests)

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "yes"
FLAVOR=		no_python
.endif
