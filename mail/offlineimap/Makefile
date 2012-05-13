# $OpenBSD: Makefile,v 1.24 2012/05/13 11:56:35 pea Exp $

COMMENT=	powerful IMAP/Maildir synchronization and reader support

MODPY_EGG_VERSION= 6.5.3
DISTNAME=	offlineimap-${MODPY_EGG_VERSION}
CATEGORIES=	mail

HOMEPAGE=	http://offlineimap.org/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	https://github.com/spaetz/offlineimap/tarball/v${MODPY_EGG_VERSION}/

NO_REGRESS=	Yes

MODULES=	lang/python

BUILD_DEPENDS=	textproc/py-docutils

WRKDIST=	${WRKDIR}/spaetz-offlineimap-f2fe807

EXAMPLESDIR=	${PREFIX}/share/examples/offlineimap

post-build:
	@cd ${WRKSRC}/docs && ${LOCALBASE}/bin/rst2man MANUAL.rst ${WRKBUILD}/offlineimap.1

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/offlineimap.conf{,.minimal} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/offlineimap.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
