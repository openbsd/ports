# $OpenBSD: Makefile,v 1.10 2000/03/05 18:30:41 espie Exp $

DISTNAME=	transfig.3.2.3
PKGNAME=	transfig-3.2.3
CATEGORIES=	print
NEED_VERSION=	1.223
MASTER_SITES=	ftp://www-epb.lbl.gov/xfig/
MASTER_SITE_SUBDIR= applications/drawing_tools/transfig


MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	jpeg.62:graphics/jpeg
RUN_DEPENDS=	gs:print/ghostscript5

USE_IMAKE=	Yes

post-patch:
	perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g' ${WRKSRC}/fig2dev/Imakefile

.include <bsd.port.mk>
