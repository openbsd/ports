# $OpenBSD: Makefile,v 1.14 1999/11/08 06:22:37 fgsch Exp $

DISTNAME=	mtools-3.9.6
PKGNAME=	mtools-3.9.6-1012
CATEGORIES=	sysutils
DIST_SUBDIR=	mtools
MASTER_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/

PATCH_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/
PATCHFILES=	mtools-3.9.6-19991012.diff.gz

MAINTAINER=	fgsch@openbsd.org

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

pre-patch:
	@${LN} -s . ${WRKSRC}/mtools

post-patch:
	@${RM} ${WRKSRC}/mtools

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/mtools.info ${PREFIX}/info/dir

.include <bsd.port.mk>
