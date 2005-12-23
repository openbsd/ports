# $OpenBSD: Makefile,v 1.17 2005/12/23 15:03:05 espie Exp $

COMMENT=	"CDDA reading utility with extra data verification features"

DISTNAME=	cdparanoia-III-alpha9.8
PKGNAME=	cdparanoia-3.a9.8p0
CATEGORIES=	audio
SHARED_LIBS=	cdda_interface	0.0 \
		cdda_paranoia	0.0

HOMEPAGE=	http://www.xiph.org/paranoia/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${HOMEPAGE}download/
EXTRACT_SUFX=	.src.tgz

CONFIGURE_STYLE=	autoconf autoheader
AUTOCONF_VERSION=	2.52
CONFIGURE_ENV=		GCC=${CC}
MAKE_FLAGS=	LIBcdda_interface_VERSION=${LIBcdda_interface_VERSION} \
		LIBcdda_paranoia_VERSION=${LIBcdda_paranoia_VERSION}
FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR=${WRKINST}

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cdparanoia
	${INSTALL_DATA} ${WRKBUILD}/FAQ.txt ${PREFIX}/share/doc/cdparanoia

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} != "no"
ALL_TARGET=	static
INSTALL_TARGET=	sinstall
.endif
