# $OpenBSD: Makefile,v 1.5 1999/10/29 00:37:56 ian Exp $

DISTNAME=       efax-0.9
PKGNAME=        efax-0.9
CATEGORIES=	comm

MAINTAINER=	ian@OpenBSD.ORG

MASTER_SITES=	ftp://sunsite.unc.edu/pub/Linux/apps/serialcomm/fax/

# the inner program, efax, must be setuid uucp, same as tip, cu, uucp,
# so that it can open /dev/cua?? read/write.
post-install:
		chown uucp ${PREFIX}/bin/efax
		chmod u+s  ${PREFIX}/bin/efax

.include <bsd.port.mk>
