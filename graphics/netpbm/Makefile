# $OpenBSD: Makefile,v 1.50 2009/10/11 19:36:15 naddy Exp $

COMMENT=	toolkit for converting images between different formats

DISTNAME=	netpbm-10.26.64
SHARED_LIBS=	netpbm	1.0
CATEGORIES=	graphics
HOMEPAGE=	http://netpbm.sourceforge.net/

PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netpbm/}
EXTRACT_SUFX=	.tgz

WANTLIB=	c m z
LIB_DEPENDS=	tiff.>=35::graphics/tiff \
		jpeg.>=62::graphics/jpeg \
		png.>=2::graphics/png \
		jbig.>=2::graphics/jbigkit \
		jasper.>=1::graphics/jasper

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile
ALL_TARGET=
INSTALL_TARGET=	install.bin install.lib install.data \
		install.hdr install.staticlib

MAKE_FLAGS=	CC="${CC}" \
		LIBnetpbm_VERSION=${LIBnetpbm_VERSION}
FAKE_FLAGS=	PKGDIR="${WRKINST}${TRUEPREFIX}"

pre-build:
	@perl -i -pe 's#%%X11BASE%%#${X11BASE}#g;' \
		-e 's#%%PREFIX%%#${PREFIX}#g;' ${WRKSRC}/pm_config.in.h
	@cp ${FILESDIR}/Makefile.config.OpenBSD ${WRKSRC}/Makefile.config

NO_REGRESS=	Yes

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "yes"
MAKE_FLAGS+=	NETPBMLIBTYPE=unixstatic
.else
MAKE_FLAGS+=	NETPBMLIBTYPE=unixshared
.endif
