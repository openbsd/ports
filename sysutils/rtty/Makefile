# $OpenBSD: Makefile,v 1.17 2006/02/05 11:38:24 steven Exp $

COMMENT=	"multiuser "tip"/"cu" replacement with logging"

DISTNAME=       rtty-4.0
CATEGORIES=	sysutils

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

MASTER_SITES=   ftp://ftp.isc.org/isc/rtty/
EXTRACT_SUFX=	.shar.gz

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

FAKE_FLAGS=	DESTROOT=${WRKINST}

post-install:
	@${INSTALL_DATA} ${WRKDIR}/README ${PREFIX}/rtty

.include <bsd.port.mk>
