# OpenBSD makefile for:	tiff
# Version required:	3.3 beta 021
# Date created:		December 2, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/03 02:37:00 angelos Exp $
#

DISTNAME=	v3.3beta021.src
PKGNAME=	tiff-3.3
CATEGORIES=	graphics
MASTER_SITES=   ftp://ftp.isri.unlv.edu/pub/mirror/tiff/ \
		ftp://ftp.coli.uni-sb.de/pub/graphics/ \
		ftp://ftp.funet.fi/pub/graphics/packages/tiff/
# Original master site not keeps old versions
# MASTER_SITES=   ftp://ftp.sgi.com/graphics/tiff/

NO_WRKSUBDIR=	yes
MAN1=		fax2tiff.1 gif2tiff.1 pal2rgb.1 ppm2tiff.1 ras2tiff.1 \
		rgb2ycbcr.1 sgi2tiff.1 thumbnail.1 tiff2bw.1 tiff2ps.1 \
		tiffcmp.1 tiffcp.1 tiffdither.1 tiffdump.1 tiffgt.1 \
		tiffinfo.1 tiffmedian.1 tiffsplit.1 tiffsv.1
MAN3=		TIFFClose.3 TIFFError.3 TIFFFlush.3 TIFFGetField.3 \
		TIFFOpen.3 TIFFPrintDirectory.3 TIFFReadDirectory.3 \
		TIFFReadEncodedStrip.3 TIFFReadEncodedTile.3 \
		TIFFReadRGBAImage.3 TIFFReadRawStrip.3 TIFFReadRawTile.3 \
		TIFFReadScanline.3 TIFFReadTile.3 TIFFSetDirectory.3 \
		TIFFSetField.3 TIFFWarning.3 TIFFWriteDirectory.3 \
		TIFFWriteEncodedStrip.3 TIFFWriteEncodedTile.3 \
		TIFFWriteRawStrip.3 TIFFWriteRawTile.3 TIFFWriteScanline.3 \
		TIFFintro.3 TIFFquery.3 TIFFsize.3 TIFFstrip.3 \
		TIFFswab.3 TIFFtile.3

pre-configure:
	@(cd ${WRKSRC}/libtiff ; ln -s Makefile.gcc Makefile)
	@(cd ${WRKSRC}/tools ; ln -s Makefile.sun Makefile)

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
