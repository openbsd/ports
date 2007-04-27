# $OpenBSD: Makefile,v 1.1.1.1 2007/04/27 13:36:09 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	"H.323 IP telephony endpoint"

DISTNAME=	ohphone-v1_14_4
PKGNAME=	ohphone-1.14.4
CATEGORIES=	telephony net

EXTRACT_SUFX=	-src-tar.gz

HOMEPAGE=	http://www.voxgratia.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/releases/

WANTLIB=	X11 Xext avutil c crypto expat m ossaudio pt pthread \
		ssl stdc++

LIB_DEPENDS=	h323.>=1::net/openh323

WRKDIST=	${WRKDIR}/${DISTNAME:S/-/_/}

USE_X11=	Yes
USE_GMAKE=	Yes
ALL_TARGET=	optshared
NO_REGRESS=	Yes

MAKE_ENV+=	CC=${CC} CPLUS=${CXX} \
		OPENH323DIR=${LOCALBASE}/share/openh323/ \
		OH323_LIBDIR=${LOCALBASE}/lib \
		PWLIBDIR=${LOCALBASE}/share/pwlib/ \
		SYSLIBDIR=`ptlib-config --libdir` \
		PTLIB_FILE=libpt.`ptlib-config --sharedlibext`.`ptlib-config --version` \
		STDCCFLAGS="${STDCCFLAGS} -I${LOCALBASE}/include/openh323"

do-extract:
	@tar xzf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} -C ${WRKDIR}

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/ohphone.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
