# $OpenBSD: Makefile,v 1.12 2000/10/05 16:10:24 ian Exp $

DISTNAME=       efax-0.9
PKGNAME=        efax-0.9
CATEGORIES=	comms
FAKE=		Yes

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://sunsite.unc.edu/pub/Linux/apps/serialcomm/fax/

FAX_UID = uucp
FAX_GID = dialer

FAKE_FLAGS=BINDIR=${WRKINST}${PREFIX}/bin MANDIR=${WRKINST}${PREFIX}/man
# The inner program, efax, must be setuid uucp, same as tip, cu, uucp,
# so it can open the /dev/cua?? files.
post-install:
	${CHOWN} ${FAX_UID}.${FAX_GID} ${PREFIX}/bin/efax
	${CHMOD} u+s ${PREFIX}/bin/efax

.include <bsd.port.mk>
