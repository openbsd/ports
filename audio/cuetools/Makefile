COMMENT=	tools for handling audio-file cue sheets and toc files

DISTNAME=	cuetools-1.3.1
REVISION=	2

CATEGORIES=	audio textproc

HOMEPAGE=	http://www.cuetools.net/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c

# XXX: When updating, MASTER_SITES= ${HOMEPAGE}/install/
MASTER_SITES=	https://distfiles.sigtrap.nl/

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/extras/cuetag.sh ${PREFIX}/bin/cuetag

.include <bsd.port.mk>
