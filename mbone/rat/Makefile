# $OpenBSD: Makefile,v 1.20 2006/07/13 12:35:54 steven Exp $

COMMENT=	"Robust Audio Tool from UCL"

DISTNAME=	rat-3.0.33
CATEGORIES=	mbone

PERMIT_PACKAGE_CDROM=	"no commercial use"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no commercial use"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m ossaudio tcl80 c X11 Xext

MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/rat/releases/3.0.33/

LIB_DEPENDS=	tk80:tk-8.0.*:x11/tk/8.0

WRKDIST=	${WRKDIR}/rat-3.0
USE_GMAKE=	Yes
MAKE_FLAGS=	CC=${CC} OSTYPE=${OPSYS} OSVERS=${OPSYS_VER} OSMVER=${OSMAJOR}
ALL_TARGET=	bin/rat-${OPSYS}-${OSREV}

NO_REGRESS=	Yes

post-extract:
	@cp ${FILESDIR}/Makefile_OpenBSD ${WRKSRC}/Makefile_${OPSYS}_${OSMAJOR}

pre-build:
	@mkdir -p ${WRKSRC}/bin ${WRKSRC}/objs/${OPSYS}_${OPSYS_VER}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/rat-${OPSYS}-${OPSYS_VER} \
		${PREFIX}/bin/rat
	${INSTALL_MAN} ${WRKSRC}/man/man1/rat.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rat
	${INSTALL_DATA} ${WRKSRC}/COPYRIGHT ${PREFIX}/share/doc/rat

.include <bsd.port.mk>
