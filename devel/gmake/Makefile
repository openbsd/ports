# $OpenBSD: Makefile,v 1.7 1999/03/10 17:59:38 espie Exp $
#

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
#	${INSTALL_MAN} ${WRKSRC}/make.man ${PREFIX}/man/man1/gmake.1
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/make.info ${PREFIX}/info/dir

.include <bsd.port.mk>
