# $OpenBSD: Makefile,v 1.9 2002/03/15 17:43:14 danh Exp $

BROKEN=		"security hole, contains buffer overflow"

COMMENT=	"Microsoft FrontPage 2000 Server extensions for Apache"

ONLY_FOR_ARCHS=	i386

VERSION=	1.5.1
APVERSION=	1.3.17
DISTNAME=	mod_frontpage-${VERSION}-${APVERSION}
PKGNAME=	mod_frontpage-${VERSION}
CATEGORIES=	www
NEED_VERSION=	1.500
MASTER_SITES=	http://home.edo.uni-dortmund.de/~chripo/download/ \
		ftp://ftp.edo.uni-dortmund.de/pub/mod_frontpage/
MASTER_SITES0=	ftp://ftp.microsoft.com/products/frontpage/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} fp40.bsdi.tar.z:0

HOMEPAGE=	http://home.edo.uni-dortmund.de/~chripo/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	"licensing restrictions"
PERMIT_PACKAGE_FTP=	"licensing restrictions"
PERMIT_DISTFILES_CDROM=	"licensing restrictions"
PERMIT_DISTFILES_FTP=	"licensing restrictions"

APACHEDIST=	${WRKDIR}/apache_${APVERSION}
FP_PATCH=	${WRKDIR}/${DISTNAME}/patch-${VERSION}-${APVERSION}
WRKSRC=		${WRKDIR}/apache_${APVERSION}/src/modules/frontpage
NO_REGRESS=	Yes

APXS=		/usr/sbin/apxs
CC!=		${APXS} -q CC
CFLAGS!=	${APXS} -q CFLAGS
INCLUDES!=	${APXS} -q INCLUDEDIR

post-extract:
	@mkdir -p ${WRKSRC}

post-patch:
	@patch -s -p0 -d ${APACHEDIST} < ${FP_PATCH}

do-build:
	@cd ${WRKSRC}; ${APXS} -c mod_frontpage.c
	cd ${WRKSRC}; ${CC} ${CFLAGS} -I${INCLUDES} fpexec.c -o fpexec
	@sed 's,!!PREFIX!!,${PREFIX},' ${FILESDIR}/mod_frontpage-enable > \
		${WRKSRC}/mod_frontpage-enable

do-install:
	${INSTALL_DATA} ${WRKSRC}/mod_frontpage.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKSRC}/mod_frontpage-enable ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/fpexec ${PREFIX}/sbin
	@cd ${WRKDIR} && pax -rw frontpage ${PREFIX}
	@chown -R bin:bin ${PREFIX}/frontpage
	@chown root ${PREFIX}/frontpage/version4.0/apache-fp/_vti_bin/fpexe

.include <bsd.port.mk>
