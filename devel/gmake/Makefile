# OpenBSD makefile for:	GNU make
# Version required:     3.76.1
# Date created:		18 November 1997
# Whom:			todd@OpenBSD.org
#
# $Id: Makefile,v 1.1.1.1 1997/11/18 10:11:05 todd Exp $
#

DISTNAME=       make-3.76.1
PKGNAME=        gmake-3.76.1
CATEGORIES=	devel
MASTER_SITES=   ${MASTER_SITE_GNU}

MAINTAINER=	todd@OpenBSD.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-transform-name='s/^/g/'
MAN1=		gmake.1

post-install:
	/bin/chmod g-s ${PREFIX}/bin/gmake
	/usr/sbin/chgrp ${BINGRP} ${PREFIX}/bin/gmake
	${INSTALL_MAN} ${WRKSRC}/make.man ${PREFIX}/man/man1/gmake.1
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/make.info ${PREFIX}/info/dir

.include <bsd.port.mk>
