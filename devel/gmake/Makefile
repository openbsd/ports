# $OpenBSD: Makefile,v 1.3 1998/10/09 00:26:02 marc Exp $
#

DISTNAME=       make-3.76.1
PKGNAME=        gmake-3.76.1
CATEGORIES=	devel

# Sigh.. this should be flagged as broken, but too many other non
# broken ports depend upon it and the old source is still available.
#
#BROKEN=	"newer version available"

MAINTAINER=	todd@OpenBSD.org

MASTER_SITES=   ${MASTER_SITE_GNU}

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-transform-name='s/^/g/'

post-install:
	/bin/chmod g-s ${PREFIX}/bin/gmake
	/usr/sbin/chgrp ${BINGRP} ${PREFIX}/bin/gmake
	${INSTALL_MAN} ${WRKSRC}/make.man ${PREFIX}/man/man1/gmake.1
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/make.info ${PREFIX}/info/dir

.include <bsd.port.mk>
