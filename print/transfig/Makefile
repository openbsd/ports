# $OpenBSD: Makefile,v 1.9 2000/02/03 03:19:06 kevlo Exp $

DISTNAME=	transfig.3.2.3
PKGNAME=	transfig-3.2.3
CATEGORIES=	print
MASTER_SITES=	ftp://www-epb.lbl.gov/xfig/
MASTER_SITE_SUBDIR= applications/drawing_tools/transfig

NEED_VERSION=	1.88

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	jpeg.62:${PORTSDIR}/graphics/jpeg
RUN_DEPENDS=	gs:${PORTSDIR}/print/ghostscript5

USE_IMAKE=	yes

post-patch:
	perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g' ${WRKSRC}/fig2dev/Imakefile

.include <bsd.port.mk>
