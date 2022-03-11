COMMENT=	Python-based build system

# XXX: keep version in sync with scons.port.mk
VERSION=	2.5.1
DISTNAME=	scons-${VERSION}
PKGNAME=	scons-py2-${VERSION}
CATEGORIES=	devel

HOMEPAGE=	https://www.scons.org/

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scons/}

MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

NO_TEST=	Yes

SUBST_VARS+=	VERSION

MODPY_ADJ_FILES +=	script/scons script/sconsign script/scons-time

# drop the unversioned executables and rename the manpages so it doesn't
# conflict with devel/scons
post-install:
	rm ${PREFIX}/bin/scons{,-configure-cache,-time,ign}
	cd ${PREFIX}/man/man1 && \
		mv scons-time.1 scons-time-${VERSION}.1 && \
		mv scons.1 scons-${VERSION}.1 && \
		mv sconsign.1 sconsign-${VERSION}.1

.include <bsd.port.mk>
