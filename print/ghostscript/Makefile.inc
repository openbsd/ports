# $OpenBSD: Makefile.inc,v 1.3 2001/05/05 21:30:48 espie Exp $
#
GS_SITES=  ftp://mirror.cs.wisc.edu/pub/mirrors/ghost/${DIR}/
GS_SITES+= ftp://ftp.cs.wisc.edu/ghost/${DIR}/
GS_SITES+= ftp://ftp.mirror.ac.uk/sites/ftp.cs.wisc.edu/ghost/${DIR}/
GS_SITES+= ftp://ftp.medasys-digital-systems.fr/pub/unix/ghostscript/${DIR}/
GS_SITES+= ftp://ftp.fh-koblenz.de/pub/Ghostscript/${DIR}/
GS_SITES+= ftp://munnari.oz.au/ghost/${DIR}/
GS_SITES+= ftp://elza.lip.ru/pub/ghost/${DIR}/
GS_SITES+= ${MASTER_SITE_TEX_CTAN:S,%SUBDIR%,support/ghostscript/${DIR},}

PDF_SITES= http://www.ozemail.com.au/~geoffk/pdfencrypt/
