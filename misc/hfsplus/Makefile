# $OpenBSD: Makefile,v 1.13 2007/07/01 20:56:41 aanriot Exp $

COMMENT=	"hfsplus filesystem access tool"

# this only makes sense on macintosh (powerpc) systems.
ONLY_FOR_ARCHS= powerpc

VERSION=	1.0.4
DISTNAME=	hfsplus_${VERSION}
PKGNAME=	hfsplus-${VERSION}p1
WRKDIST=	${WRKDIR}/hfsplus-${VERSION}
CATEGORIES=	misc 
EXTRACT_SUFX=	.src.tar.bz2

# GPL
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

AUTOCONF_VERSION=	2.59
BUILD_DEPENDS=	:autoconf-${AUTOCONF_VERSION}*:devel/autoconf/${AUTOCONF_VERSION}
LIB_DEPENDS=	utf8::misc/libutf8 

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

MASTER_SITES=	http://penguinppc.org/historical/hfsplus/

# actually uses automake/autoheader, but that is done in pre-configure now
CONFIGURE_STYLE=automake
CONFIGURE_ENV=	LIBS="-lutf8" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}
SHARED_LIBS=	hfsp	0.0

pre-configure:
	@cd ${WRKDIST} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		${MAKE_PROGRAM} -f Makefile.cvs all

DOC=bugs.html hfsp.html libhfsp.html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hfsplus/

.for h in ${DOC}
	${INSTALL_DATA} ${WRKSRC}/doc/${h} ${PREFIX}/share/doc/hfsplus/
.endfor

.include <bsd.port.mk>
