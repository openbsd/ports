# $OpenBSD: Makefile,v 1.51 2020/10/05 19:46:17 jca Exp $

# keep in synch with mozilla.port.mk
ONLY_FOR_ARCHS =	i386 amd64 powerpc sparc64
COMMENT-main =		GnuPG extension for Thunderbird
COMMENT-seamonkey =	GnuPG extension for Seamonkey

V =		2.2.4
REVISION =	0
DISTNAME =	enigmail-${V}
PKGNAME-main =	${PKGNAME}
PKGNAME-seamonkey =	enigmail-seamonkey-${V}
EPOCH =		0
HOMEPAGE =	https://www.enigmail.net/
MASTER_SITES =	https://www.enigmail.net/download/source/

CATEGORIES =	mail
MULTI_PACKAGES =	-main -seamonkey

# MPL
PERMIT_PACKAGE=	Yes

MODULES =	lang/python
MODPY_RUNDEP =	No
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
USE_GMAKE =	Yes
CONFIGURE_STYLE =	gnu

BUILD_DEPENDS =	archivers/zip archivers/unzip
RUN_DEPENDS =	security/gnupg>=2.2.23p1
WRKDIST =	${WRKDIR}/enigmail

# needed for the naming of the libsubprocess.so
# the xpi, and the arch matching within mozilla
.if ${MACHINE_ARCH:Mi386}
XPCOM_ABI =	x86
.elif ${MACHINE_ARCH:Mamd64}
XPCOM_ABI =	x86_64
.elif ${MACHINE_ARCH:Mpowerpc}
XPCOM_ABI =	ppc
.elif ${MACHINE_ARCH:Msparc64}
XPCOM_ABI =	sparc
.endif
SUBST_VARS += XPCOM_ABI

# enigmail's UUID
GUID =	{847b3a00-7ab1-11d4-8f02-006008948af5}

post-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

post-build:
	cd ${WRKSRC} && ${MAKE_PROGRAM} xpi

do-install:
.for a in thunderbird seamonkey
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${a}/distribution/extensions
	cp ${WRKBUILD}/build-tb/enigmail-${V}.xpi ${PREFIX}/lib/${a}/distribution/extensions/${GUID}.xpi
.endfor

.include <bsd.port.mk>
