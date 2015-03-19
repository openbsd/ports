# $OpenBSD: Makefile,v 1.38 2015/03/19 20:25:27 naddy Exp $

# XXX fix building with glib2 >= 2.29 (G_CONST_RETURN is deprecated)
CFLAGS +=	"-DG_CONST_RETURN=const"

COMMENT-main=	file and directory monitoring system
COMMENT-python=	gamin Python bindings

GNOME_PROJECT=	gamin
GNOME_VERSION=	0.1.10

PKGNAME-main=	${DISTNAME}
PKGNAME-python=	py-gamin-${GNOME_VERSION}

REVISION-main=	21
REVISION-python=8

SHARED_LIBS +=  gamin-1              0.0      # .1.10
SHARED_LIBS +=  fam                  1.0      # .0.0

CATEGORIES=	sysutils

HOMEPAGE=	http://www.gnome.org/~veillard/gamin/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=	.tar.bz2

MULTI_PACKAGES=	-main -python
NOT_FOR_ARCHS-python =	${NO_SHARED_ARCHS}

PSEUDO_FLAVORS=	no_python
FLAVOR?=

MODULES=	x11/gnome \
		devel/gettext

WANTLIB-main =		${WANTLIB} c pcre glib-2.0 pthread
LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			devel/glib2
RUN_DEPENDS-main =

LIB_DEPENDS-python = 	${BUILD_PKGPATH},-main

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-python}
MODULES +=		lang/python
WANTLIB-python += 	gamin-1 pthread
RUN_DEPENDS-python += 	${MODPY_RUN_DEPENDS}
.else
CONFIGURE_ARGS += 	--without-python
.endif

MODPY_RUNDEP=		No
MODGNOME_CPPFLAGS=	-pthread
MODGNOME_LDFLAGS=	-pthread


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-docs \
			--disable-inotify \
			--disable-dnotify \
			--disable-hurd_mach_notify \
			--enable-kqueue \
			--enable-server \
			--with-threads

.ifdef DEBUG
CONFIGURE_ARGS+=	--enable-debug \
			--enable-debug-api
.else
CONFIGURE_ARGS+=	--disable-debug
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{server/gam_conf.c,doc/config.html}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gamin
	${INSTALL_DATA} ${FILESDIR}/gaminrc \
		${PREFIX}/share/examples/gamin

do-test:
	@(cd ${WRKSRC}/tests && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		Makefile ${MAKE_ARGS} tests)

.include <bsd.port.mk>
