# $OpenBSD: Makefile,v 1.17 2010/10/11 08:15:17 jasper Exp $

# uses gcj which is only supported on select archs
ONLY_FOR_ARCHS=	i386 amd64 sparc64

COMMENT=	essential libraries for java

DISTNAME=	classpath-0.98
REVISION=	3

CATEGORIES=	lang java

DISTFILES=	${DISTNAME}.tar.gz \
		ecj.jar:0
DIST_SUBDIR=	classpath

.for _lib in javaio javalang javanio javautil \
	javalangmanagement javalangreflect javanet
SHARED_LIBS+=		${_lib} 0.98
.endfor

HOMEPAGE=	http://www.gnu.org/software/classpath/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	converters/libiconv gcc4
MODGCC4_ARCHES=	*
MODGCC4_LANGS=	java

BUILD_DEPENDS=	::archivers/zip \
		::lang/antlr2

RUN_DEPENDS=	::lang/gcc/4.2,-java,java \
		::lang/antlr2

LIB_DEPENDS=	::x11/gtk+2 \
		::x11/dbus-glib \
		::devel/ORBit2 \
		::devel/gconf2 \
		::devel/libmagic \
		::devel/gmp

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0 cairo \
		dbus-1 expat fontconfig freetype gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 intl m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs \
		xcb xcb-render xcb-render-util ORBit-2 gconf-2 magic gmp z \
		gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0

MASTER_SITES=	${MASTER_SITE_GNU:=classpath/}
MASTER_SITES0=	http://archive.eclipse.org/eclipse/downloads/drops/R-3.2.2-200702121330/

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

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
		--with-antlr-jar=${LOCALBASE}/share/java/antlr-2.7.5.jar

EXTRACT_CASES+= *.jar) true ;;

pre-patch:
	@sed -e 's,%%DISTDIR%%,${FULLDISTDIR},' \
		< ${FILESDIR}/ecj.in \
		> ${WRKDIR}/bin/ecj
	@chmod +x ${WRKDIR}/bin/ecj

.include <bsd.port.mk>
