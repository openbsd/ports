# $OpenBSD: Makefile,v 1.7 1999/11/01 04:10:18 ian Exp $

DISTNAME=       efax-0.9
PKGNAME=        efax-0.9
CATEGORIES=	comms

MAINTAINER=	ian@OpenBSD.ORG

MASTER_SITES=	ftp://sunsite.unc.edu/pub/Linux/apps/serialcomm/fax/

FAX_UID = uucp
FAX_GID = dialer

# The inner program, efax, must be setuid uucp, same as tip, cu, uucp,
# so it can open the /dev/cua?? files.
post-install:
	${CHOWN} ${FAX_UID}.${FAX_GID} ${PREFIX}/bin/efax
	${CHMOD} u+s ${PREFIX}/bin/efax

.include <bsd.port.mk>
