# $OpenBSD: Makefile,v 1.18 2007/06/09 16:17:35 naddy Exp $

COMMENT=	multiuser tip/cu replacement with logging

DISTNAME=       rtty-4.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	sysutils

# BSD
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
