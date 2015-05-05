# $OpenBSD: Makefile,v 1.43 2015/05/05 17:00:18 sthen Exp $

# uses gcj which is only supported on select archs
ONLY_FOR_ARCHS=	amd64 i386 sparc64
BROKEN-sparc64= gcj blows during build

COMMENT=	essential libraries for Java

DISTNAME=	classpath-0.98
REVISION=	19

CATEGORIES=	lang java

DISTFILES=	${DISTNAME}.tar.gz \
		ecj.jar:0
DIST_SUBDIR=	classpath

.for _lib in javaio javalang javanio javautil \
	javalangmanagement javalangreflect javanet
SHARED_LIBS+=		${_lib} 0.98
.endfor

HOMEPAGE=	https://www.gnu.org/software/classpath/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xtst Xxf86vm atk-1.0 c
WANTLIB += cairo dbus-1 dbus-glib-1 drm expat ffi fontconfig freetype
WANTLIB += gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz m magic pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm z

MODULES=	devel/gettext gcc4
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	java

BUILD_DEPENDS=	archivers/zip \
		lang/antlr3>=3.4p0

RUN_DEPENDS=	lang/gcc/${MODGCC4_VERSION},-java \
		lang/antlr3>=3.4p0

LIB_DEPENDS=	x11/gtk+2 \
		devel/gconf2 \
		devel/libmagic \
		devel/gmp

MASTER_SITES=	${MASTER_SITE_GNU:=classpath/}
MASTER_SITES0=	http://archive.eclipse.org/eclipse/downloads/drops/R-3.2.2-200702121330/

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
		JAVA=egij

CONFIGURE_ARGS=	--with-libiconv-prefix=${LOCALBASE} \
		--with-glibj=zip \
		--disable-plugin \
		--enable-gtk-peer \
		--x-includes=${X11BASE}/include \
		--x-libraries=${X11BASE}/lib \
		--with-antlr-jar=${LOCALBASE}/share/java/classes/antlr3.jar

EXTRACT_CASES+= *.jar) true ;;

pre-patch:
	@sed -e 's,%%DISTDIR%%,${FULLDISTDIR},' \
		< ${FILESDIR}/ecj.in \
		> ${WRKDIR}/bin/ecj
	@chmod +x ${WRKDIR}/bin/ecj

.include <bsd.port.mk>
