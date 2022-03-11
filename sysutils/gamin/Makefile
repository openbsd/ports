# XXX fix building with glib2 >= 2.29 (G_CONST_RETURN is deprecated)
CFLAGS +=	"-DG_CONST_RETURN=const"

COMMENT=	file and directory monitoring system

GNOME_PROJECT=	gamin
GNOME_VERSION=	0.1.10
EXTRACT_SUFX=	.tar.bz2

REVISION=	25

SHARED_LIBS +=  gamin-1              0.0      # .1.10
SHARED_LIBS +=  fam                  1.0      # .0.0

CATEGORIES=	sysutils

HOMEPAGE=	http://www.gnome.org/~veillard/gamin/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPL
PERMIT_PACKAGE=	Yes

WANTLIB += c glib-2.0 iconv intl pcre pthread

MODULES=	x11/gnome

LIB_DEPENDS=	devel/glib2

MODGNOME_CPPFLAGS=	-pthread
MODGNOME_LDFLAGS=	-pthread

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--disable-docs \
			--disable-inotify \
			--disable-dnotify \
			--disable-hurd_mach_notify \
			--enable-kqueue \
			--enable-server \
			--with-threads \
			--without-python

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{server/gam_conf.c,doc/config.html}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gamin
	${INSTALL_DATA} ${FILESDIR}/gaminrc \
		${PREFIX}/share/examples/gamin

do-test:
	(cd ${WRKSRC}/tests && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		Makefile ${MAKE_ARGS} tests)

.include <bsd.port.mk>
