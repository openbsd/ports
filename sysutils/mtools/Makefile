# $OpenBSD: Makefile,v 1.9 1999/07/11 17:56:01 brad Exp $

DISTNAME=	mtools-3.9.6
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/

MAINTAINER=	ports@openbsd.org

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/mtools.info ${PREFIX}/info/dir

.include <bsd.port.mk>
