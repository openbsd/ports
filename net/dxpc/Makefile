# $OpenBSD: Makefile,v 1.1.1.1 1998/11/16 00:15:18 espie Exp $
# Version required: 3.7.0
# Date created: 5 nov 98
# Whom: Marc Espie (espie@openbsd.org)
#

DISTNAME= dxpc-3.7.0
CATEGORIES=net X11

MAINTAINER=		espie@openbsd.org

MASTER_SITES= ftp://ftp.x.org/contrib/utilities/
MASTER_SITES+= ftp://sunsite.unc.edu/pub/Linux/X11/xutils/

# remove -g for production
CXXFLAGS=-O2

# g++ 2.8.1 burps an ICE on this thingy

.if (${MACHINE_ARCH} == "m68k")
USE_EGXX=yes
.endif
GNU_CONFIGURE=		yes

.include <bsd.port.mk>
