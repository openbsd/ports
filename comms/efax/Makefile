# $OpenBSD: Makefile,v 1.16 2002/07/17 22:45:09 lebel Exp $

COMMENT=	"small & simple FAX send/receive program"

DISTNAME=       efax-0.9
PKGNAME=        efax-0.9
CATEGORIES=	comms

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://sunsite.unc.edu/pub/Linux/apps/serialcomm/fax/

FAX_UID = uucp
FAX_GID = dialer

MAKE_ENV=	CC="${CC}"
FAKE_FLAGS=BINDIR=${WRKINST}${PREFIX}/bin MANDIR=${WRKINST}${PREFIX}/man
# The inner program, efax, must be setuid uucp, same as tip, cu, uucp,
# so it can open the /dev/cua?? files.
post-install:
	${CHOWN} ${FAX_UID}.${FAX_GID} ${PREFIX}/bin/efax
	${CHMOD} u+s ${PREFIX}/bin/efax

.include <bsd.port.mk>
