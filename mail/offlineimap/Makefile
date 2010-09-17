# $OpenBSD: Makefile,v 1.17 2010/09/17 11:21:21 jasper Exp $

COMMENT=	powerful IMAP/Maildir synchronization and reader support

MODPY_EGG_VERSION= 6.2.0.2
DISTNAME=	offlineimap_${MODPY_EGG_VERSION}.orig
CATEGORIES=	mail
PKGNAME=	offlineimap-${MODPY_EGG_VERSION}
REVISION=	0

HOMEPAGE=	http://software.complete.org/offlineimap/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.debian.org/debian/pool/main/o/offlineimap/ \
		ftp://ftp.de.debian.org/debian/pool/main/o/offlineimap/

NO_REGRESS=	Yes

MODULES=	lang/python

BUILD_DEPENDS=	::textproc/docbook-to-man

WRKDIST=	${WRKDIR}/offlineimap-${MODPY_EGG_VERSION}

EXAMPLESDIR=	${PREFIX}/share/examples/offlineimap

post-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/docbook-to-man offlineimap.sgml \
		> ${WRKBUILD}/offlineimap.1

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/offlineimap.conf{,.minimal} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/offlineimap.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
