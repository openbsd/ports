# $OpenBSD: Makefile,v 1.4 2002/08/07 18:17:49 brad Exp $

COMMENT=	"hfsplus filesystem access tool"

# this only makes sense on macintosh (powerpc) systems.
ONLY_FOR_ARCHS= powerpc

PKGNAME=	hfsplus-1.0.2
DISTNAME=	hfsplus_1.0.2.orig
WRKDIST=	${WRKDIR}/hfsplus
CATEGORIES=	misc 

PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=	Dale Rahn <drahn@openbsd.org>

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
