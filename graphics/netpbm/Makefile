# $OpenBSD: Makefile,v 1.51 2010/07/02 02:54:59 naddy Exp $

COMMENT=	toolkit for converting images between different formats

DISTNAME=	netpbm-10.35.75
SHARED_LIBS=	netpbm	2.0
CATEGORIES=	graphics
HOMEPAGE=	http://netpbm.sourceforge.net/

PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netpbm/}
EXTRACT_SUFX=	.tgz

MODULES=	converters/libiconv
WANTLIB=	X11 Xau Xdmcp c m pthread-stubs xcb z
LIB_DEPENDS=	tiff.>=38::graphics/tiff \
		jpeg.>=64::graphics/jpeg \
		png.>=10::graphics/png \
		jbig.>=2::graphics/jbigkit \
		jasper.>=2::graphics/jasper \
		xml2.>=11::textproc/libxml

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile
ALL_TARGET=
INSTALL_TARGET=	install.bin install.lib install.data \
		install.hdr install.staticlib

MAKE_FLAGS=	CC="${CC}" \
		LIBnetpbm_VERSION=${LIBnetpbm_VERSION}
FAKE_FLAGS=	PKGDIR="${WRKINST}${TRUEPREFIX}"

pre-patch:
	@rm -f ${WRKSRC}/converter/other/jpeg2000/libjasper/include/jasper/jas_types.h.orig

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
