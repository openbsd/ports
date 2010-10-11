# $OpenBSD: Makefile,v 1.2 2010/10/11 09:16:28 jasper Exp $

ONLY_FOR_ARCHS =${GCC4_ARCHS}

COMMENT=	interactive electronics designing software

V=		0.4.3b
DISTNAME=	fritzing.2010.10.01.source
PKGNAME=	fritzing-$V
CATEGORIES=	cad

HOMEPAGE=	http://fritzing.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Code: GPLv3+
# Rest: CreativeCommons:BY-SA
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES=	${HOMEPAGE}/download/$V/source-tarball/
EXTRACT_SUFX=	.tar.bz2

WANTLIB +=	QtDBus QtGui QtNetwork QtSql QtSvg QtWebKit QtXml QtXmlPatterns
WANTLIB +=	phonon c m pthread sqlite3 stdc++ z

LIB_DEPENDS=	::x11/qt4

MODULES=        x11/qt4
USE_X11=	Yes
NO_REGRESS=	Yes

RUN_DEPENDS=	::devel/desktop-file-utils

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/fapplication.cpp

# -DLINUX_32 gets added to CFLAGS, though it's only used to figure out
# if there is a newer version of the 32-bit Linux binary on the upstream
# webpage. So it's safe to set it on all arches (for now).
do-configure:
	cd ${WRKSRC} && \
		${LOCALBASE}/bin/qmake4 -unix -o Makefile phoenix.pro

do-install:
	${SUBST_CMD} -o ${BINOWN} -g ${BINGRP} -c ${FILESDIR}/fritzing.sh \
		${PREFIX}/bin/fritzing
	chmod ${BINMODE} ${PREFIX}/bin/fritzing
	${INSTALL_PROGRAM} ${WRKSRC}/Fritzing ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/fritzing/
	cd ${WRKSRC}; tar cf - bins parts resources sketches tools translations | \
		tar xf - -C ${PREFIX}/share/fritzing/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/fritzing.desktop \
		${PREFIX}/share/applications/fritzing.desktop

.include <bsd.port.mk>
