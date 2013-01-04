# $OpenBSD: Makefile,v 1.10 2013/01/04 01:30:47 sthen Exp $

COMMENT =	push/pull from a Git server repository using Mercurial

MODPY_EGG_VERSION =	0.3.4
DISTNAME =		py-hg-git-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://hg-git.github.com/

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

# Ugly gymnastics to give a more sensible filename than "0.3.4.tar.gz"..
MASTER_SITES =	https://bitbucket.org/durin42/hg-git/get/${MODPY_EGG_VERSION}${EXTRACT_SUFX}?dummy=/

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

WRKDIST =		${WRKDIR}/durin42-hg-git-586b7aa96466

RUN_DEPENDS =		devel/py-dulwich \
			devel/mercurial
REGRESS_DEPENDS =	${RUN_DEPENDS} \
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
