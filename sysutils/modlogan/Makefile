# $OpenBSD: Makefile,v 1.32 2017/11/21 00:13:04 naddy Exp $

COMMENT=	modular log analyzer

DISTNAME=	modlogan-0.8.13
REVISION=	10
CATEGORIES=	sysutils www

HOMEPAGE=	http://jan.kneschke.de/projects/modlogan/

MASTER_SITES=	${HOMEPAGE}/download/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  adns bz2 c expat fontconfig freetype gd iconv intl jpeg m
WANTLIB += pcre png pthread tiff webp z


LIB_DEPENDS=	archivers/bzip2 \
		devel/gettext \
		devel/pcre \
		graphics/gd \
		net/adns

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --libdir=${PREFIX}/lib/modlogan
CONFIGURE_ENV += LOCALBASE="${LOCALBASE}" \
		 CPPFLAGS="-I${X11BASE}/include" \
		 LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
MAKE_FLAGS=	INTLLIBS="-L${LOCALBASE}/lib -lintl -liconv"

NO_TEST=	Yes

EXAMPLES=	doc/*.conf doc/*-dist
DOCS=		doc/*.txt 

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/modlogan
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/modlogan
	cd ${WRKSRC} && ${INSTALL_DATA} ${EXAMPLES} \
	  ${PREFIX}/share/examples/modlogan
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} \
	  ${PREFIX}/share/doc/modlogan

.include <bsd.port.mk>
