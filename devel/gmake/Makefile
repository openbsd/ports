# $OpenBSD: Makefile,v 1.8 1999/04/01 06:20:07 brad Exp $

DISTNAME=       make-3.77
PKGNAME=        gmake-3.77
CATEGORIES=	devel

MAINTAINER=	todd@OpenBSD.org

MASTER_SITES=   ${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= make

SEPARATE_BUILD=simple
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-transform-name='s/^/g/'

post-install:
	/bin/chmod g-s ${PREFIX}/bin/gmake
	/usr/sbin/chgrp ${BINGRP} ${PREFIX}/bin/gmake
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/make.info ${PREFIX}/info/dir

.include <bsd.port.mk>
