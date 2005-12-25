# $OpenBSD: Makefile,v 1.9 2005/12/25 22:56:32 pvalchev Exp $

COMMENT=	"hfsplus filesystem access tool"

# this only makes sense on macintosh (powerpc) systems.
ONLY_FOR_ARCHS= powerpc

VERSION=	1.0.4
DISTNAME=	hfsplus_${VERSION}
PKGNAME=	hfsplus-${VERSION}
WRKDIST=	${WRKDIR}/hfsplus-${VERSION}
CATEGORIES=	misc 
EXTRACT_SUFX=	.src.tar.bz2

# GPL
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

AUTOCONF_VERSION=	2.59
BUILD_DEPENDS=	::devel/autoconf/${AUTOCONF_VERSION}
LIB_DEPENDS=	utf8::misc/libutf8 

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

HOMEPAGE=	http://ftp.penguinppc.org/projects/hfsplus/
MASTER_SITES=	http://ftp.penguinppc.org/projects/hfsplus/

# actually uses automake/autoheader, but that is done in pre-configure now
CONFIGURE_STYLE=automake
CONFIGURE_ENV=	LIBS="-lutf8" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}
SHARED_LIBS=	hfsp	0.0
MODGNU_SHARED_LIBS=	hfsp	'-no-undefined'

pre-configure:
	@cd ${WRKDIST} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		${MAKE_PROGRAM} -f Makefile.cvs all

.include <bsd.port.mk>
