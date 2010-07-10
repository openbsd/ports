# $OpenBSD: Makefile,v 1.2 2010/07/10 20:30:37 naddy Exp $

COMMENT =		generic functions support systems

MODPY_EGG_VERSION =	0.5
REV = 			2582
DISTNAME =		PEAK-Rules-${MODPY_EGG_VERSION}a1.dev-r${REV}
PKGNAME =		py-peak-rules-${MODPY_EGG_VERSION}r${REV}

CATEGORIES =		devel

HOMEPAGE =		http://pypi.python.org/pypi/PEAK-Rules/

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# PSF
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://peak.telecommunity.com/snapshots/

MODULES =		lang/python
RUN_DEPENDS =		::devel/py-bytecodeassembler \
			::devel/py-decoratortools \
			::devel/py-addons \
			::devel/py-extremes
BUILD_DEPENDS =		${RUN_DEPENDS}

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-peak-rules
	${INSTALL_DATA} ${WRKSRC}/*.txt ${PREFIX}/share/doc/py-peak-rules/

.include <bsd.port.mk>
