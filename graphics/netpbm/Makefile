# $OpenBSD: Makefile,v 1.61 2013/03/11 11:10:54 espie Exp $

COMMENT=	toolkit for converting images between different formats

DISTNAME=	netpbm-10.35.86
SHARED_LIBS=	netpbm	2.0
CATEGORIES=	graphics
HOMEPAGE=	http://netpbm.sourceforge.net/

PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netpbm/}
EXTRACT_SUFX=	.tgz

MODULES=	converters/libiconv
WANTLIB=	X11 Xau Xdmcp c m pthread-stubs xcb z tiff>=38 jpeg>=64 \
		png>=10 jbig>=2 jasper>=2 xml2>=11
LIB_DEPENDS=	graphics/tiff \
		graphics/jpeg \
		graphics/png \
		graphics/jbigkit \
		graphics/jasper \
		textproc/libxml

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile
ALL_TARGET=
INSTALL_TARGET=	install.bin install.lib install.data \
		install.hdr install.staticlib

MAKE_FLAGS=	CC="${CC}" \
		LIBnetpbm_VERSION=${LIBnetpbm_VERSION}
FAKE_FLAGS=	PKGDIR="${WRKINST}${TRUEPREFIX}"

.include <bsd.port.arch.mk>

.if ${NO_SHARED_LIBS:L} == "yes"
MAKE_FLAGS+=	NETPBMLIBTYPE=unixstatic
.else
MAKE_FLAGS+=	NETPBMLIBTYPE=unixshared
.endif

pre-patch:
	@rm -f ${WRKSRC}/converter/other/jpeg2000/libjasper/include/jasper/jas_types.h.orig

pre-build:
	perl -i -p \
	    -e 's#%%X11BASE%%#${X11BASE}#g;' \
	    -e 's#%%PREFIX%%#${PREFIX}#g;' ${WRKSRC}/pm_config.in.h
	cp ${FILESDIR}/Makefile.config.OpenBSD ${WRKSRC}/Makefile.config
	cd ${WRKSRC}; buildtools/stamp-date >lib/compile.h

NO_TEST=	Yes

.include <bsd.port.mk>
