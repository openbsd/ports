# $OpenBSD: Makefile,v 1.16 2004/12/20 10:35:36 alek Exp $

COMMENT=	"multiuser "tip"/"cu" replacement with logging"

DISTNAME=       rtty-4.0
CATEGORIES=	sysutils

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

MASTER_SITES=   ftp://ftp.vix.com/pub/vixie/
EXTRACT_SUFX=	.shar.gz

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

FAKE_FLAGS=	DESTROOT=${WRKINST}

post-install:
	@${INSTALL_DATA} ${WRKDIR}/README ${PREFIX}/rtty

.include <bsd.port.mk>
