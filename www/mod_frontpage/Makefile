# $OpenBSD: Makefile,v 1.1.1.1 2001/03/04 17:21:21 danh Exp $

VERSION=	1.5.1
APVERSION=	1.3.17
DISTNAME=	mod_frontpage-${VERSION}-${APVERSION}
PKGNAME=	mod_frontpage-${VERSION}
CATEGORIES=	www
NEED_VERSION=	1.358
MASTER_SITES=	http://home.edo.uni-dortmund.de/~chripo/download/ \
		ftp://ftp.edo.uni-dortmund.de/pub/mod_frontpage/

HOMEPAGE=	http://home.edo.uni-dortmund.de/~chripo/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# This port current only works with archs supporting dynamic loading.
ONLY_FOR_ARCHS= i386 m68k sparc

APACHEDIST=	${WRKDIR}/apache_${APVERSION}
FP_PATCH=	${WRKDIR}/${DISTNAME}/patch-${VERSION}-${APVERSION}
WRKSRC=		${WRKDIR}/apache_${APVERSION}/src/modules/frontpage

post-extract:
	@mkdir -p ${WRKSRC}
	@cp ${FILESDIR}/Makefile.OpenBSD ${WRKSRC}/Makefile.OpenBSD

post-patch:
	@patch -s -p0 -d ${APACHEDIST} < ${FP_PATCH}

do-build:
	@cd ${WRKSRC} && ${MAKE} -f Makefile.OpenBSD
	@sed 's,y0y0y0,${TRUEPREFIX},' \
		< ${FILESDIR}/frontpage-enable > ${WRKSRC}/frontpage-enable

do-install:
	${INSTALL_DATA} ${WRKSRC}/mod_frontpage.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKSRC}/frontpage-enable ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/fpexec ${PREFIX}/sbin

.include <bsd.port.mk>
