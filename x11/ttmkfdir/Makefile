# $OpenBSD: Makefile,v 1.12 2004/12/19 17:27:02 alek Exp $

COMMENT=	"create fonts.scale file for the TrueType font server"

PKGNAME=	ttmkfdir-2.0
DISTNAME=	ttmkfdir2.20021109
CATEGORIES=	x11

HOMEPAGE=	http://people.redhat.com/yshao/

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c freetype m stdc++

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

MAKE_ENV=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/ttmkfdir2

post-extract:
	@rm ${WRKDIST}/ttmkfdir.cpp.orig ${WRKDIST}/*.lo

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ttmkfdir ${PREFIX}/bin/ttmkfdir

.include <bsd.port.mk>
