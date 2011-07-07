# $OpenBSD: Makefile,v 1.20 2011/07/07 17:46:11 naddy Exp $

COMMENT=	3D image rendering package

DISTNAME=	povray-3.6.1
REVISION=	0
CATEGORIES=	graphics

HOMEPAGE=	http://www.povray.org/

PERMIT_PACKAGE_CDROM=	Perhaps we qualify for commercial distribution
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Our CDs are not too expensive, see povlegal.doc but I think we should ask them anyway
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xpm c jpeg m stdc++ tiff z

MASTER_SITES=		http://www.povray.org/ftp/pub/povray/Official/Unix/ \
			ftp://ftp.povray.org/pub/povray/Official/Unix/
EXTRACT_SUFX=		.tar.bz2
	
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
			CPPFLAGS="-I${LOCALBASE}/include" \
			CXXFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lm"

MAKE_FLAGS+=		povconfdir=${PREFIX}/share/examples/povray/ \
			povdocdir=${PREFIX}/share/doc/povray/ \
			povlibdir=${PREFIX}/share/povray/

NO_REGRESS=		Yes

post-extract:
	cd ${WRKSRC} && find . -type f -name \*.orig | xargs rm

post-configure:
	perl -pi -e 's,%INSTALLDIR%,${PREFIX}/share/povray/,g' \
		${WRKSRC}/povray.conf
.for f in povray.1 scripts/allanim.sh scripts/allscene.sh scripts/portfolio.sh
	${SUBST_CMD} ${WRKSRC}/$f
.endfor

.include <bsd.port.mk>
