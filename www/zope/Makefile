# $OpenBSD: Makefile,v 1.13 2002/07/09 12:32:34 matt Exp $

COMMENT=	"object-oriented web application server"

VERSION=	2.5.1
PORT_VERSION=	${VERSION}

DISTNAME=	Zope-${VERSION}-src
PKGNAME=	zope-${PORT_VERSION}
CATEGORIES=     www

HOMEPAGE=	http://www.zope.org/

MAINTAINER=	Chris Humphries <chumphries@drauku.net>

# Zope Public License (ZPL) 2.0 <http://www.zope.org/Resources/ZPL>
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.zope.org/Products/Zope/${VERSION}/
EXTRACT_SUFX=	.tgz
EXTRACT_CASES=	*.tgz) gtar zxf ${FULLDISTDIR}/$$archive ;;

MASTER_SITES0=	http://www.zope.org/Members/zigg/UnixSecurityPatch/
PATCHFILES=	Zope-${VERSION}-unix-security.patch:0
PATCH_DIST_STRIP=-p1

BUILD_DEPENDS=	:python->=2.1.2,<2.2:lang/python/2.1 \
		:gtar-*:archivers/gtar					
RUN_DEPENDS=	:python->=2.1.2,<2.2:lang/python/2.1

# Note that the configure script is really just for pcgi, but it's
# the only one in the package.

CONFIGURE_STYLE=gnu

WRKBUILD=			${WRKSRC}/pcgi
MODGNU_CONFIG_GUESS_DIRS=	${WRKBUILD}

ZOPEHOME=	${PREFIX}/lib/zope
PRODUCTSDIR=	${ZOPEHOME}/lib/python/Products

do-build:
	cd ${WRKSRC} && \
		ZDIR=${ZOPEHOME} ${LOCALBASE}/bin/python2.1 w_pcgi.py && \
		ZDIR=${ZOPEHOME} ${LOCALBASE}/bin/python2.1 \
			-O inst/compilezpy.py
	sed -e "s%@@PREFIX@@%${PREFIX}%g" \
		-e "s%@@LOCALBASE@@%${LOCALBASE}%g" \
		< ${FILESDIR}/zope-instance > ${WRKSRC}/zope-instance

# All this should give us what closely resembles a zope.org binary
# installation and allow us to rely as much as possible on make
# plist to update to newer versions.

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/zope-instance ${PREFIX}/bin
	${INSTALL_PROGRAM_DIR} ${ZOPEHOME}
	cp -Rp ${WRKSRC}/* ${ZOPEHOME}
	chown -R 0:0 ${ZOPEHOME}
	cd ${ZOPEHOME}/lib && ln -s ../../python2.1
	rm -r ${ZOPEHOME}/*.txt ${ZOPEHOME}/doc ${ZOPEHOME}/lib/Components \
		${ZOPEHOME}/pcgi/Win32
	find ${ZOPEHOME} -name \*.orig -or -name \*.o -or -name .cvsignore \
		-or -name sedscript -or -name \*.old | xargs rm
	find ${ZOPEHOME}/lib/python -name config.c -or -name Makefile \
		-or -name Makefile.pre -or -name Makefile.pre.in | xargs rm
	rm ${ZOPEHOME}/lib/python/Setup ${ZOPEHOME}/pcgi/Makefile \
		${ZOPEHOME}/pcgi/config.log ${ZOPEHOME}/pcgi/config.status \
		${ZOPEHOME}/pcgi/config.cache ${ZOPEHOME}/zope-instance \
		${ZOPEHOME}/w*_pcgi.py*
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zope/changenotes 
	${INSTALL_DATA} ${WRKSRC}/*.txt ${WRKSRC}/doc/*.txt \
		${PREFIX}/share/doc/zope
	${INSTALL_DATA} ${WRKSRC}/doc/changenotes/* \
		${PREFIX}/share/doc/zope/changenotes
	echo "Zope ${VERSION} (OpenBSD package zope-${PORT_VERSION})" \
		> ${PREFIX}/lib/zope/lib/python/version.txt

do-regress:
	cd ${WRKSRC} && ${LOCALBASE}/bin/python2.1 utilities/testrunner.py -a

.include <bsd.port.mk>
