# $OpenBSD: Makefile,v 1.31 2011/10/18 06:46:24 espie Exp $

# XXX fix building with glib2 >= 2.29 (G_CONST_RETURN is deprecated)	
CFLAGS +=	"-DG_CONST_RETURN=const"

COMMENT-main=	file and directory monitoring system
COMMENT-server=	gamin file monitoring server
COMMENT-python=	gamin Python bindings
NOT_FOR_ARCHES-python = ${NO_SHARED_ARCHS}

GNOME_PROJECT=	gamin
GNOME_VERSION=	0.1.10

PKGNAME-main=	libgamin-${GNOME_VERSION}
PKGNAME-server=	${DISTNAME}
PKGNAME-python=	py-gamin-${GNOME_VERSION}

REVISION-main=	5
REVISION-server=17
REVISION-python=5

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

EXTRACT_SUFX=		.tar.bz2

MULTI_PACKAGES=	-main -server -python
NOT_FOR_ARCHS-python =	${NO_SHARED_ARCHS}

PSEUDO_FLAVORS=	no_python no_server bootstrap
FLAVOR?=

MODULES=	x11/gnome

WANTLIB-main =
LIB_DEPENDS-main =
RUN_DEPENDS-main =

LIB_DEPENDS-server = 	${LIB_DEPENDS} devel/glib2

LIB_DEPENDS-python = 	${BUILD_PKGPATH},-main
.include <bsd.port.arch.mk>


.if ${BUILD_PACKAGES:M-server}
MODULES +=		devel/gettext
CONFIGURE_ARGS += 	--enable-server
WANTLIB-server = 	${WANTLIB} c pcre glib-2.0>=1800 pthread
.else
CONFIGURE_ARGS += 	--disable-server
.endif

.if ${BUILD_PACKAGES:M-python}
MODULES +=		lang/python
WANTLIB-python += 	gamin-1
RUN_DEPENDS-python += 	${MODPY_RUN_DEPENDS}
.else
CONFIGURE_ARGS += 	--without-python
.endif

MODPY_RUNDEP=	No

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
MODGNOME_CPPFLAGS=	-pthread
MODGNOME_LDFLAGS=	-pthread
CONFIGURE_ARGS+= --disable-docs \
		--disable-inotify \
		--disable-dnotify \
		--disable-hurd_mach_notify \
		--enable-kqueue \
		--with-threads

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
	@(cd ${WRKSRC}/tests && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		Makefile ${MAKE_ARGS} tests)

.include <bsd.port.mk>
