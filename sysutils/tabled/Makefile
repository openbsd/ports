# $OpenBSD: Makefile,v 1.11 2008/10/28 15:21:49 naddy Exp $

COMMENT=	daemon to modify pf tables from userland

DISTNAME=	tabled-1.0.5
PKGNAME=	${DISTNAME}p0

CATEGORIES=    	sysutils

HOMEPAGE=	http://www.etc.msys.ch/software/tabled/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=  	ftp://ftp.etc.msys.ch/pub/sources/tabled/
EXTRACT_SUFX=	.tgz

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	${INSTALL_DATA} ${WRKSRC}/tabled.conf ${PREFIX}/share/examples/

.include <bsd.port.mk>
