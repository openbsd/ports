# $OpenBSD: Makefile,v 1.12 2001/10/28 13:05:49 espie Exp $
#

COMMENT=	"multiuser "tip"/"cu" replacement with logging"

DISTNAME=       rtty-3.2
CATEGORIES=	sysutils
NEED_VERSION=	1.402

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ftp://ftp.vix.com/pub/vixie/

WRKDIST=	${WRKDIR}

FAKE_FLAGS=DESTROOT=${WRKINST}

post-install:
	@${INSTALL_DATA} ${WRKDIR}/README ${PREFIX}/rtty

.include <bsd.port.mk>
