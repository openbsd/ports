# $OpenBSD: Makefile,v 1.12 2009/06/16 15:31:02 kurt Exp $

# uses gcj which is only supported on select archs
ONLY_FOR_ARCHS=	i386 amd64 sparc64

COMMENT=	essential libraries for java

DISTNAME=	classpath-0.98

CATEGORIES=	lang java

DISTFILES=	${DISTNAME}.tar.gz \
		ecj.jar:0
DIST_SUBDIR=	classpath

.for _lib in gcjwebplugin gconfpeer gtkpeer javaio javalang \
	javalangmanagement javalangreflect javamath javanet \
	javanio javautil jawt
SHARED_LIBS+=		${_lib} 0.98
.endfor

HOMEPAGE=	http://www.gnu.org/software/classpath/

MAINTAINER=	Frederick C. Druseikis <fredd@cse.sc.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	converters/libiconv gcc4
MODGCC4_ARCHES=	*
MODGCC4_LANGS=	java

BUILD_DEPENDS=	::devel/xulrunner,-devel \
		::lang/antlr2

RUN_DEPENDS=	::lang/antlr2

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		dbus-glib-1::x11/dbus-glib \
		ORBit-2::devel/ORBit2 \
		gconf-2::devel/gconf2 \
		magic::devel/libmagic \
		gmp::devel/gmp

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0 cairo \
		dbus-1 expat fontconfig freetype gio-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gthread-2.0 intl m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png stdc++ z

MASTER_SITES=	${MASTER_SITE_GNU:=classpath/}
MASTER_SITES0=	http://archive.eclipse.org/eclipse/downloads/drops/R-3.2.2-200702121330/

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
		JAVA=gij

CONFIGURE_ARGS=	--with-libiconv-prefix=${LOCALBASE} \
		--with-glibj=zip \
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
