# $OpenBSD: Makefile,v 1.15 2002/10/28 19:53:44 naddy Exp $

COMMENT=	"multiuser "tip"/"cu" replacement with logging"

DISTNAME=       rtty-4.0
CATEGORIES=	sysutils

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ftp://ftp.vix.com/pub/vixie/
EXTRACT_SUFX=	.shar.gz

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

FAKE_FLAGS=	DESTROOT=${WRKINST}

post-install:
	@${INSTALL_DATA} ${WRKDIR}/README ${PREFIX}/rtty

.include <bsd.port.mk>
