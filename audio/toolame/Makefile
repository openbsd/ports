# $OpenBSD: Makefile,v 1.3 2006/07/19 13:41:02 steven Exp $
# $FreeBSD: ports/audio/toolame/Makefile,v 1.9 2004/02/08 01:13:48 lioux Exp $
#

COMMENT=		"optimized mpeg 1/2 layer 2 audio encoder"

DISTNAME=		toolame-02l
PKGNAME=		toolame-0.2lp0
CATEGORIES=		audio

HOMEPAGE=		http://www.eftel.com/~mikecheng/planckenergy/

MAINTAINER=		Jacob Meuser <jakemsr@jakemsr.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c m

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=toolame/}
EXTRACT_SUFX=		.tgz

USE_GMAKE=		Yes
NO_REGRESS=		Yes

DOC_FILES=		FUTURE HISTORY README

ALL_TARGET=		toolame

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/toolame
.for file in ${DOC_FILES}
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/toolame
.endfor
	${INSTALL_PROGRAM} ${WRKBUILD}/toolame ${PREFIX}/bin

.include <bsd.port.mk>
