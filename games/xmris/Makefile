# $OpenBSD: Makefile,v 1.5 2000/01/26 22:26:18 espie Exp $

DISTNAME=	xmris.4.04
PKGNAME=	xmris-4.04
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= games
EXTRACT_SUFX=	.tgz

NO_CDROM=	"NOFEE:	Can not sell"

MAINTAINER=	angelos@openbsd.org

USE_GMAKE=	yes
USE_IMAKE=      yes
MAKE_FLAGS=	XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults -f
ALL_TARGET=	xmris

pre-configure:
	@cd ${WRKSRC} && \
	mv -f Imakefile Imakefile.orig && \
	echo "LOCAL=${PREFIX}" >Imakefile && \
	sed -e 's/\\ $$/\\/' <Imakefile.orig >>Imakefile && \
	echo "CDEBUGFLAGS=-O2" >>Imakefile && \
	echo "MANSUFFIX=6" >>Imakefile

.include <bsd.port.mk>
