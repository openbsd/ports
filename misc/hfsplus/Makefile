# $OpenBSD: Makefile,v 1.5 2003/01/05 01:59:34 brad Exp $

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

BUILD_DEPENDS=	::devel/autoconf \
		::devel/automake
LIB_DEPENDS=	utf8::misc/libutf8 

USE_GMAKE=	Yes

HOMEPAGE=	http://ftp.penguinppc.org/projects/hfsplus/
MASTER_SITES=	http://ftp.penguinppc.org/projects/hfsplus/

# actually uses automake/autoheader, but that is done in pre-configure now
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LIBS="-lutf8" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}

pre-configure:
	@cd ${WRKDIST} && ${MAKE_PROGRAM} -f Makefile.cvs all

.include <bsd.port.mk>
