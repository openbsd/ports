# $OpenBSD: Makefile,v 1.12 2000/03/23 04:12:05 turan Exp $

DISTNAME=	transfig.3.2.3
PKGNAME=	transfig-3.2.3
CATEGORIES=	print
NEED_VERSION=	1.223
MASTER_SITES=	ftp://www-epb.lbl.gov/xfig/
MASTER_SITE_SUBDIR= applications/drawing_tools/transfig

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	jpeg.62:graphics/jpeg
RUN_DEPENDS=	gs:print/ghostscript/gnu

USE_IMAKE=	Yes
FAKE=		Yes

pre-install:
	-mkdir -p ${PREFIX}/lib/X11

post-patch:
	perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g' ${WRKSRC}/fig2dev/Imakefile

.include <bsd.port.mk>
