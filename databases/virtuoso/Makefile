# $OpenBSD: Makefile,v 1.14 2016/09/13 11:44:07 naddy Exp $

BROKEN-macppc =	make: don't know how to make all

COMMENT =	object-relational SQL database
DISTNAME =	virtuoso-opensource-6.1.6
REVISION =	6
PKGNAME =	${DISTNAME:C/-opensource//}

CATEGORIES =	databases
HOMEPAGE =	http://www.openlinksw.com/

# GPLv2, plus some more rights given
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 Xext Xt
WANTLIB += bz2 c crypto djvulibre expat fftw3 fontconfig freetype
WANTLIB += iconv jbig jpeg lcms2 lzma m openjp2 png pthread pthread-stubs
WANTLIB += ssl tiff webp xcb xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=virtuoso/}

BUILD_DEPENDS =		devel/bison \
			devel/gperf \
			lang/gawk

LIB_DEPENDS =		converters/libiconv \
			graphics/ImageMagick \
			graphics/lcms2 \
			textproc/libxml

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9

CONFIGURE_ENV =		YACC="${LOCALBASE}/bin/bison -y"

CONFIGURE_ARGS =	--disable-all-vads \
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
