# $OpenBSD: Makefile,v 1.7 2000/03/17 00:26:36 turan Exp $

DISTNAME=	xmris.4.04
PKGNAME=	xmris-4.04
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= games
EXTRACT_SUFX=	.tgz
NEED_VERSION=	1.195

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	yes
USE_IMAKE=      yes
MAKE_FLAGS=	XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults 
ALL_TARGET=	xmris

pre-configure:
	@cd ${WRKSRC} && \
	mv -f Imakefile Imakefile.orig && \
	echo "LOCAL=${PREFIX}" >Imakefile && \
	sed -e 's/\\ $$/\\/' <Imakefile.orig >>Imakefile && \
	echo "CDEBUGFLAGS=-O2" >>Imakefile && \
	echo "MANSUFFIX=6" >>Imakefile

.include <bsd.port.mk>
