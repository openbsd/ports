# $OpenBSD: Makefile,v 1.8 2015/09/12 14:15:32 ajacoutot Exp $

BROKEN-macppc =	make: don't know how to make all

COMMENT =	object-relational SQL database
DISTNAME =	virtuoso-opensource-6.1.6
REVISION =	3
PKGNAME =	${DISTNAME:C/-opensource//}

CATEGORIES =	databases
HOMEPAGE =	http://www.openlinksw.com/

# GPLv2, plus some more rights given
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE MagickCore MagickWand SM X11 Xext Xt bz2 c crypto
WANTLIB += djvulibre expat fftw3 fontconfig freetype jasper jbig jpeg
WANTLIB += lcms2 ltdl lzma m png pthread pthread-stubs ssl tiff webp
WANTLIB += wmf-0.2 wmflite-0.2 xcb xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=virtuoso/}

MODULES =		converters/libiconv
BUILD_DEPENDS =		devel/bison \
			devel/flex \
			devel/gperf \
			lang/gawk

LIB_DEPENDS =		graphics/ImageMagick \
			graphics/lcms2 \
			textproc/libxml

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9

CONFIGURE_ENV =		YACC="${LOCALBASE}/bin/bison -y"

CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-all-vads \
			--disable-hslookup \
			--disable-openldap \
			--disable-php \
			--disable-python \
			--disable-ruby \
			--disable-wbxml2 \
			--without-internal-zlib \
			--with-jdk2=no \
			--with-jdk3=no \
			--with-jdk4=no \
			--with-layout=OpenBSD

# Requires threaded or "multiplicity" Perl
CONFIGURE_ARGS +=	--disable-perl

TEST_IS_INTERACTIVE =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure.in

post-install:
	rm -R ${PREFIX}/share/virtuoso
	mv ${WRKINST}/var/virtuoso ${PREFIX}/share/virtuoso
	${INSTALL_DATA_DIR} ${PREFIX}/lib/virtuoso/plugins
	mv ${PREFIX}/lib/virtodbc* ${PREFIX}/lib/virtuoso/plugins

.include <bsd.port.mk>
