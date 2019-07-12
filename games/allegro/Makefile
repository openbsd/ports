# $OpenBSD: Makefile,v 1.20 2019/07/12 20:46:14 sthen Exp $

BROKEN-hppa =	./src/x/xdga2s.s:25: Error: symbol .text is already defined

COMMENT =	game programming library for C/C++ developers

V =		4.2.3
DISTNAME =	allegro-$V
REVISION =	7
CATEGORIES =	games devel multimedia
SHARED_LIBS =	alleg	1.0	# 4.2

HOMEPAGE =	http://liballeg.org/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=alleg/}

# readme.txt: "You may use, modify, redistribute, and generally hack it about
# in any way you like, and you do not have to give us anything in return."
PERMIT_PACKAGE =	Yes

USE_GMAKE =		Yes

MAKE_FILE =		makefile
ALL_TARGET =		default

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.63

SUBST_VARS =		V

WANTLIB =		X11 Xcursor Xext Xpm Xxf86dga Xxf86vm c m \
			sndio pthread

CONFIGURE_ARGS =	--enable-artsdigi=no \
			--enable-esddigi=no \
			--enable-jackdigi=no \
			--enable-ossdigi=no \
			--enable-ossmidi=no \
			--enable-modules=no \
			--with-x
# XXX work around bogus configure entry with clang
CONFIGURE_ENV =		allegro_cv_support_include_prefix=yes

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV +=	LDFLAGS="-Wl,-znotext"
.endif

MAKE_ENV +=		shared_major_minor=${LIBalleg_VERSION}

NO_TEST =		Yes
CFLAGS +=		-fgnu89-inline

post-extract:
	cp ${FILESDIR}/sndio.c ${WRKSRC}/src/unix

post-install:
	cd ${WRKSRC} && ${MAKE_PROGRAM} install-man
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/allegro
	rm -f ${WRKSRC}/docs/html/build/tmpfile.txt
	cd ${WRKSRC}/docs/html && pax -rw . ${PREFIX}/share/doc/allegro

.include <bsd.port.mk>
