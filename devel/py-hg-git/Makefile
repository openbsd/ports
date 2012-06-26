# $OpenBSD: Makefile,v 1.9 2012/06/26 07:26:41 landry Exp $

COMMENT =	push/pull from a Git server repository using Mercurial

MODPY_EGG_VERSION =	0.3.1
DISTNAME =		schacon-hg-git-${MODPY_EGG_VERSION}
PKGNAME =		py-hg-git-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://hg-git.github.com/

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	http://github.com/schacon/hg-git/tarball/${MODPY_EGG_VERSION}/

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

WRKDIST =		${WRKDIR}/${DISTNAME:S/-${MODPY_EGG_VERSION}/-6dc5f17/}

RUN_DEPENDS =		devel/py-dulwich \
			devel/mercurial
REGRESS_DEPENDS = 	${RUN_DEPENDS} \
			archivers/bzip2 \
			archivers/unzip \
			devel/git,-main

MODPY_BADEGGS =		hg-git

pre-regress:
	perl -pi -e 's|python |python${MODPY_VERSION} |g' \
	    ${WRKSRC}/tests/test-*

do-regress:
	cd ${WRKSRC}/tests && ${MODPY_BIN} run-tests.py \
	    --with-hg=${LOCALBASE}/hg

.include <bsd.port.mk>
