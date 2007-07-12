# $OpenBSD: Makefile,v 1.18 2007/07/12 09:37:05 aanriot Exp $

COMMENT=	"modular log analyzer"

DISTNAME=	modlogan-0.8.13
PKGNAME=	${DISTNAME}p4
CATEGORIES=	sysutils www

HOMEPAGE=	http://jan.kneschke.de/projects/modlogan/

MASTER_SITES=	${HOMEPAGE}/download/

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c expat fontconfig freetype jpeg m png z 

MODULES=	devel/gettext

LIB_DEPENDS=	gd.>=18::graphics/gd \
		pcre::devel/pcre \
		adns.>=1::net/adns \
		bz2.>=10::archivers/bzip2

USE_LIBTOOL=	Yes
USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --libdir=${PREFIX}/lib/modlogan
CONFIGURE_ENV += LOCALBASE="${LOCALBASE}" \
		 CPPFLAGS="-I${X11BASE}/include" \
		 LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
MAKE_FLAGS=	INTLLIBS="-L${LOCALBASE}/lib -lintl -liconv"

NO_REGRESS=	Yes

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
