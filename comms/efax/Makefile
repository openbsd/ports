# $OpenBSD: Makefile,v 1.8 2000/02/12 08:02:11 turan Exp $

DISTNAME=       efax-0.9
PKGNAME=        efax-0.9
CATEGORIES=	comms

MAINTAINER=	ian@OpenBSD.ORG

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=	ftp://sunsite.unc.edu/pub/Linux/apps/serialcomm/fax/

FAX_UID = uucp
FAX_GID = dialer

# The inner program, efax, must be setuid uucp, same as tip, cu, uucp,
# so it can open the /dev/cua?? files.
post-install:
	${CHOWN} ${FAX_UID}.${FAX_GID} ${PREFIX}/bin/efax
	${CHMOD} u+s ${PREFIX}/bin/efax

.include <bsd.port.mk>
