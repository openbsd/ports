# $OpenBSD: Makefile,v 1.1.1.1 2001/08/05 20:44:41 matt Exp $

COMMENT=	"object-oriented web application server"

VERSION=	2.4.0
DISTNAME=	Zope-${VERSION}-src
PKGNAME=	zope-${VERSION}.2
CATEGORIES=     www
NEED_VERSION=	1.419

HOMEPAGE=	http://www.zope.org/

MAINTAINER=	Matt Behrens <matt@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.zope.org/Products/Zope/${VERSION}/
EXTRACT_SUFX=	.tgz

HOTFIX_DATE0=	2001_07_25
MASTER_SITES0=	http://www.zope.org/Products/Zope/Hotfix_${HOTFIX_DATE0:S/_/-/g}/
HOTFIX_DATE1=	2001_08_04
MASTER_SITES1=	http://www.zope.org/Products/Zope/Hotfix_${HOTFIX_DATE1:S/_/-/g}/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		Hotfix_${HOTFIX_DATE0:S/_/-/g}.tar.gz:0 \
		Hotfix_${HOTFIX_DATE1}.tgz:1

BUILD_DEPENDS=	python2.1:python-2.1*-threads:lang/python
RUN_DEPENDS=	python2.1:python-2.1*-threads:lang/python

# Note that the configure script is really just for pcgi, but as
# it's the only one in the package, I figured it was safe to call it
# "the" configure script.

CONFIGURE_STYLE=autoconf

WRKBUILD=	${WRKSRC}/pcgi
AUTOCONF_DIR=	${WRKBUILD}

ZOPEHOME=	${PREFIX}/lib/zope
PRODUCTSDIR=	${ZOPEHOME}/lib/python/Products

# Fix @LongLinks so we don't have to depend on gtar

post-extract:
	cd ${WRKSRC}/lib/python/Products/PluginIndexes/TextIndex/Splitter/ISO_8859_1_Splitter && \
		mv Makefile.pr Makefile.pre.in && \
		mv src/Splitte src/Splitter.c

do-build:
	cd ${WRKSRC} && ZDIR=${ZOPEHOME} python w_pcgi.py
	sed -e "s%@@PREFIX@@%${PREFIX}%g" \
		-e "s%@@LOCALBASE@@%${LOCALBASE}%g" \
		< ${FILESDIR}/zope-instance > ${WRKSRC}/zope-instance

# All this should give us what closely resembles a zope.org binary
# installation, which is currently impossible via the tarball-included
# scriptage, and allow us to rely as much as possible on make plist
# to update to newer versions.

# Hopefully we can work towards something cleaner in the future when
# the developers release their binary-making scripts.  I am told that
# as part of the "fishbowl" process Zope Corp. is undertaking, their
# package build scripts will soon be available.

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/zope-instance ${PREFIX}/bin
	${INSTALL_PROGRAM_DIR} ${ZOPEHOME}
	cp -Rp ${WRKSRC}/* ${ZOPEHOME}
	chown -R 0:0 ${ZOPEHOME}
	cd ${ZOPEHOME}/lib && ln -s ../../python2.1
	rm -r ${ZOPEHOME}/*.txt ${ZOPEHOME}/doc ${ZOPEHOME}/lib/Components \
		${ZOPEHOME}/pcgi/Win32
	find ${ZOPEHOME} -name \*.orig -or -name \*.o -or -name .cvsignore \
		-or -name sedscript \
		| xargs rm
	find ${ZOPEHOME}/lib/python -name config.c -or -name Makefile \
		-or -name Makefile.pre -or -name Makefile.pre.in \
		| xargs rm
	rm ${ZOPEHOME}/lib/python/Setup ${ZOPEHOME}/pcgi/Makefile \
		${ZOPEHOME}/pcgi/config.log ${ZOPEHOME}/pcgi/config.status \
		${ZOPEHOME}/pcgi/config.cache ${ZOPEHOME}/zope-instance \
		${ZOPEHOME}/w*_pcgi.py*
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zope/changenotes 
	${INSTALL_DATA} ${WRKSRC}/*.txt ${WRKSRC}/doc/*.txt \
		${PREFIX}/share/doc/zope
	${INSTALL_DATA} ${WRKSRC}/doc/changenotes/* \
		${PREFIX}/share/doc/zope/changenotes
	${INSTALL_DATA_DIR} ${PRODUCTSDIR}/Hotfix_${HOTFIX_DATE0}
	${INSTALL_DATA} \
		${WRKDIR}/lib/python/Products/Hotfix_${HOTFIX_DATE0}/* \
		${PRODUCTSDIR}/Hotfix_${HOTFIX_DATE0}
	${INSTALL_DATA_DIR} ${PRODUCTSDIR}/Hotfix_${HOTFIX_DATE1}
	${INSTALL_DATA} \
		${WRKDIR}/lib/python/Products/Hotfix_${HOTFIX_DATE1}/* \
		${PRODUCTSDIR}/Hotfix_${HOTFIX_DATE1}

.include <bsd.port.mk>

