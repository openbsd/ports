# $OpenBSD: Makefile,v 1.48 2019/09/16 06:54:43 giovanni Exp $

# keep in synch with mozilla.port.mk
ONLY_FOR_ARCHS =	i386 amd64 powerpc sparc64
COMMENT-main =		GnuPG extension for Thunderbird
COMMENT-seamonkey =	GnuPG extension for Seamonkey

V =		2.1.2
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
USE_GMAKE =	Yes
CONFIGURE_STYLE =	gnu

BUILD_DEPENDS =	archivers/zip archivers/unzip
RUN_DEPENDS =	security/gnupg2
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

EXTDIR =	${PREFIX}/lib/mozilla/extensions/
# enigmail's UUID
GUID =	{847b3a00-7ab1-11d4-8f02-006008948af5}
# TB and SM's UUIDs
APPS =	{3550f703-e582-4d05-9a08-453d09bdfdc6} {92650c4d-4b8e-4d2a-b7eb-24ecf4f6b63a}

post-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

post-build:
	cd ${WRKSRC} && ${MAKE_PROGRAM} xpi

do-install:
.for a in ${APPS}
	${INSTALL_DATA_DIR} ${EXTDIR}/${a}
	cp ${WRKBUILD}/build/enigmail-${V}.xpi ${EXTDIR}/${a}/${GUID}.xpi
.endfor

.include <bsd.port.mk>
