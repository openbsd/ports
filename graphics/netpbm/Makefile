# $OpenBSD: Makefile,v 1.36 2005/12/29 15:45:42 steven Exp $
# $NetBSD: Makefile,v 1.25 1999/03/04 14:18:54 tron Exp $

COMMENT=	"toolkit for converting images between different formats"
COMMENT-hpcd=	"convert photo CD images into ppm format"

VERSION=	9.24
DISTNAME=	netpbm-${VERSION}
PKGNAME=	${DISTNAME}p3
PKGNAME-hpcd=	hpcdtoppm-${VERSION}p1
SHARED_LIBS=	pbm	1.0	\
		pgm	1.0	\
		pnm	1.0	\
		ppm	1.0

CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netpbm/}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://netpbm.sourceforge.net/

LIB_DEPENDS=	tiff.35::graphics/tiff \
		jpeg.62::graphics/jpeg \
		png.2::graphics/png

MULTI_PACKAGES=	-hpcd
SUBPACKAGE?=

WANTLIB=		c
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
.if ${SUBPACKAGE} == "-hpcd"
PERMIT_PACKAGE_CDROM=	"no fee"
.else
WANTLIB+=		m z
PERMIT_PACKAGE_CDROM=	Yes
.endif

MAKE_FLAGS=	CC="${CC}" \
		LIBpbm_VERSION=${LIBpbm_VERSION} \
		LIBpgm_VERSION=${LIBpgm_VERSION} \
		LIBpnm_VERSION=${LIBpnm_VERSION} \
		LIBppm_VERSION=${LIBppm_VERSION}
FAKE_FLAGS=	${MAKE_FLAGS} PREFIX="${WRKINST}${TRUEPREFIX}"

# gcc3 ICE on exif.c
.if ${MACHINE_ARCH} == "sparc64"
MAKE_FLAGS+=	CFLAGS="${CFLAGS} -O0"
.endif

USE_GMAKE=	Yes

MAKE_FILE=	GNUmakefile

pre-build:
	@mv -f ${WRKSRC}/pm_config.h ${WRKSRC}/pm_config.h.new
	@mv -f ${WRKSRC}/pbm/pm.h ${WRKSRC}/pbm/pm.h.new
	@sed -e s#!!X11R6!!#${X11BASE}#g \
		${WRKSRC}/pm_config.h.new > ${WRKSRC}/pm_config.h
	@sed -e 's#<shhopt.h>#<pm_shhopt.h>#g' \
		${WRKSRC}/pbm/pm.h.new > ${WRKSRC}/pbm/pm.h
	@cp -f ${FILESDIR}/Makefile.config.OpenBSD \
		${WRKSRC}/Makefile.config
	@cd ${WRKSRC}/shhopt; ln -sf shhopt.h pm_shhopt.h

NO_REGRESS=	Yes

.if defined(PACKAGING) && ${SUBPACKAGE} == "-hpcd"
LIB_DEPENDS=	pbm.1,pgm.1,ppm.1::graphics/netpbm
.endif

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_FLAGS+=	NETPBMLIBTYPE=unixstatic
.else
MAKE_FLAGS+=	NETPBMLIBTYPE=unixshared
.endif
