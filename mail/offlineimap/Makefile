# $OpenBSD: Makefile,v 1.14 2009/11/09 17:12:17 bernd Exp $

COMMENT=	powerful IMAP/Maildir synchronization and reader support

V=		6.2.0
DISTNAME=	offlineimap_${V}
CATEGORIES=	mail
PKGNAME=	${DISTNAME:S/_/-/}

HOMEPAGE=	http://software.complete.org/offlineimap/

MAINTAINER=	Bernd Ahlers <bernd@openbsd.org>

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

WRKDIST=	${WRKDIR}/offlineimap

EXAMPLESDIR=	${PREFIX}/share/examples/offlineimap
SUBST_VARS=	V

post-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/docbook-to-man offlineimap.sgml \
		> ${WRKBUILD}/offlineimap.1

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/offlineimap.conf{,.minimal} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/offlineimap.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
