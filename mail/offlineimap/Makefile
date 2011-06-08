# $OpenBSD: Makefile,v 1.21 2011/06/08 17:50:10 jasper Exp $

COMMENT=	powerful IMAP/Maildir synchronization and reader support

MODPY_EGG_VERSION= 6.3.2
DISTNAME=	offlineimap_${MODPY_EGG_VERSION}.orig
CATEGORIES=	mail
PKGNAME=	offlineimap-${MODPY_EGG_VERSION}
REVISION=	0

HOMEPAGE=	http://offlineimap.org/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://github.com/nicolas33/offlineimap/tarball/v${MODPY_EGG_VERSION}/

NO_REGRESS=	Yes

MODULES=	lang/python

BUILD_DEPENDS=	textproc/py-docutils

WRKDIST=	${WRKDIR}/nicolas33-offlineimap-b49802f

EXAMPLESDIR=	${PREFIX}/share/examples/offlineimap

post-build:
	@cd ${WRKSRC}/docs && ${LOCALBASE}/bin/rst2man MANUAL.rst ${WRKBUILD}/offlineimap.1

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/offlineimap.conf{,.minimal} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/offlineimap.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
