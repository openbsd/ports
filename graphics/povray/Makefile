# $OpenBSD: Makefile,v 1.25 2013/03/11 11:10:55 espie Exp $

COMMENT=	3D image rendering package

DISTNAME=	povray-3.6.1
REVISION=	4
CATEGORIES=	graphics

HOMEPAGE=	http://www.povray.org/

PERMIT_PACKAGE_CDROM=	Perhaps we qualify for commercial distribution
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += ICE SM X11 Xpm c jpeg m stdc++ tiff z

MASTER_SITES=		http://www.povray.org/ftp/pub/povray/Official/Unix/ \
			ftp://ftp.povray.org/pub/povray/Official/Unix/
EXTRACT_SUFX=		.tar.bz2

# We replace the included ancient copy of libpng with a later release
# from the 1.2 branch.
EXTRACT_ONLY=		${DISTNAME}${EXTRACT_SUFX}
PNG_V=			1.2.49
MASTER_SITES0=		${MASTER_SITE_SOURCEFORGE:=libpng/}
DISTFILES=		${EXTRACT_ONLY} libpng-${PNG_V}.tar.gz:0

USE_LIBTOOL=		yes

LIB_DEPENDS=		graphics/jpeg \
			graphics/tiff

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-x \
			--enable-watch-cursor \
			--disable-optimiz \
			--x-includes="${X11BASE}/include" \
			--includedir=${LOCALBASE}

# POV-Ray 3.6 is incompatible with libpng 1.5.
# We do not add -I${LOCALBASE}/include/libpng on purpose, so the
# included libpng 1.2 will be used.

CONFIGURE_ENV+= 	COMPILED_BY="OpenBSD Ports <ports@openbsd.org>" \
			CPPFLAGS="-I${LOCALBASE}/include -DPNG_NO_MMX_CODE" \
			CXXFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lm"

MAKE_FLAGS+=		povconfdir=${PREFIX}/share/examples/povray/ \
			povdocdir=${PREFIX}/share/doc/povray/ \
			povlibdir=${PREFIX}/share/povray/

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config ${WRKSRC}/libraries/png

NO_TEST=		Yes

# Replace the source files for the included libpng.
post-extract:
	cd ${WRKDIST}/libraries; \
	    tar -xzf ${FULLDISTDIR}/libpng-${PNG_V}.tar.gz \
	    	-s ',^libpng-${PNG_V},png,' 'libpng-${PNG_V}/png*.[ch]'

pre-patch:
	cd ${WRKSRC} && find . -type f -name \*.orig | xargs rm

post-configure:
	perl -pi -e 's,%INSTALLDIR%,${PREFIX}/share/povray/,g' \
		${WRKSRC}/povray.conf
.for f in povray.1 scripts/allanim.sh scripts/allscene.sh scripts/portfolio.sh
	${SUBST_CMD} ${WRKSRC}/$f
.endfor

.include <bsd.port.mk>
