# $OpenBSD: Makefile,v 1.1.1.1 2003/02/03 04:09:56 pvalchev Exp $

COMMENT=	"graphical multiplayer 3-d tank war game"
DISTNAME=	bzflag-1.7g0
CATEGORIES=	games x11

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bzflag/}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.bzflag.org/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	gcc3
MODGCC3_ARCHES=	sparc64
MODGCC3_LANGS=	C++

USE_X11=	Yes
NO_REGRESS=	Yes
CFLAGS+=	-pthread
MAKE_ENV=	PORTCFLAGS="${CFLAGS}" PORTCXXFLAGS="${CXXFLAGS}" \
                PORTPREFIX="${PREFIX}"

post-patch:
	cp -f ${FILESDIR}/config-sys ${WRKSRC}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/* ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/*.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/bzflag/data
	${INSTALL_DATA} ${WRKSRC}/data/* ${PREFIX}/share/bzflag/data

.include <bsd.port.mk>
