# $OpenBSD: Makefile,v 1.8 2011/05/02 19:15:49 jasper Exp $

COMMENT=		DICOM toolkit

DISTNAME=		dcmtk-3.5.4
REVISION=		0

CATEGORIES=		graphics

HOMEPAGE=		http://www.dcmtk.org/dcmtk.php.en

MASTER_SITES=		ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/dcmtk354/

# Several ISC and BSDish
# ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/dcmtk354/COPYRIGHT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m ssl stdc++ wrap z jpeg>=62 png>=4 \
			tiff>=36 xml2>=9

LIB_DEPENDS=		graphics/jpeg \
			graphics/png \
			graphics/tiff \
			textproc/libxml

RUN_DEPENDS=		graphics/netpbm

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-threads \
			--with-libtiff --with-libtiffinc=${LOCALBASE} \
			--with-libpng --with-libpnginc=${LOCALBASE} \
			--with-libxml --with-libxmlinc=${LOCALBASE}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
FAKE_FLAGS=		DESTDIR=${WRKINST} \
			etcdir=${WRKINST}${PREFIX}/share/examples/dcmtk \
			datadir=${WRKINST}${PREFIX}/share/dcmtk \
			docdir=${WRKINST}${PREFIX}/share/doc/dcmtk
USE_GROFF =		Yes


NO_REGRESS=		Yes

.include <bsd.port.mk>

