# $OpenBSD: Makefile,v 1.27 2015/05/02 09:42:43 ajacoutot Exp $

COMMENT=	CDDA reading utility with extra data verification features

DISTNAME=	cdparanoia-III-alpha9.8
PKGNAME=	cdparanoia-3.a9.8
REVISION=	3
CATEGORIES=	audio
SHARED_LIBS=	cdda_interface	0.0 \
		cdda_paranoia	0.0

HOMEPAGE=	http://www.xiph.org/paranoia/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m

MASTER_SITES=	${HOMEPAGE}download/
EXTRACT_SUFX=	.src.tgz

CONFIGURE_STYLE=	autoconf autoheader
AUTOCONF_VERSION=	2.52
CONFIGURE_ENV=		GCC=${CC}
MAKE_FLAGS=	LIBcdda_interface_VERSION=${LIBcdda_interface_VERSION} \
		LIBcdda_paranoia_VERSION=${LIBcdda_paranoia_VERSION}

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cdparanoia
	${INSTALL_DATA} ${WRKBUILD}/FAQ.txt ${PREFIX}/share/doc/cdparanoia

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} != "no"
ALL_TARGET=	static
INSTALL_TARGET=	sinstall
.endif
