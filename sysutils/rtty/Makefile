# $OpenBSD: Makefile,v 1.14 2002/05/08 18:42:10 millert Exp $
#

COMMENT=	"multiuser "tip"/"cu" replacement with logging"

DISTNAME=       rtty-4.0
CATEGORIES=	sysutils
NEED_VERSION=	1.515

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ftp://ftp.vix.com/pub/vixie/
EXTRACT_SUFX=	.shar.gz

WRKDIST=	${WRKDIR}

FAKE_FLAGS=DESTROOT=${WRKINST}

post-install:
	@${INSTALL_DATA} ${WRKDIR}/README ${PREFIX}/rtty

.include <bsd.port.mk>
