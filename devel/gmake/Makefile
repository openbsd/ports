# $OpenBSD: Makefile,v 1.5 1998/11/19 04:54:02 form Exp $
#

DISTNAME=       make-3.77
PKGNAME=        gmake-3.77
CATEGORIES=	devel

MAINTAINER=	todd@OpenBSD.org

MASTER_SITES=   ${MASTER_SITE_GNU}

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
