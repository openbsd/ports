# $OpenBSD: Makefile,v 1.12 1999/08/24 07:27:12 fgsch Exp $

DISTNAME=	mtools-3.9.6
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/

PATCH_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/
PATCHFILES=	mtools-3.9.6-19990807.diff.gz

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
