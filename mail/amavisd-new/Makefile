# $OpenBSD: Makefile,v 1.1.1.1 2004/04/23 15:24:54 robert Exp $

COMMENT=		"interface between mailer MTA and content checkers"

V=20030616
VPATCH=p9
DISTNAME=		amavisd-new-${V}-${VPATCH}
PKGNAME=		amavisd-new-${V}pl9
CATEGORIES=		mail security

HOMEPAGE=		http://www.ijs.si/software/amavisd/
MAINTAINER=		Peter Hessler <spambox@theapt.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS=		::archivers/arc \
			::archivers/bzip2 \
			::archivers/freeze \
			::archivers/lha \
			::archivers/lzop \
			::archivers/p5-Archive-Tar \
			::archivers/p5-Archive-Zip \
			::archivers/p5-Compress-Zlib \
			::archivers/unarj \
			::archivers/unrar \
			::archivers/unzip \
			::archivers/zoo \
			::converters/p5-Convert-TNEF \
			::converters/p5-Convert-UUlib \
			::devel/p5-Net-Server \
			::mail/p5-Mail-SpamAssassin \
			::mail/p5-MIME-tools \
			::sysutils/p5-Unix-Syslog

WRKDIST=		${WRKDIR}/amavisd-new-${V}

NO_BUILD=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/amavisd ${PREFIX}/sbin/amavisd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/amavisd-new
	${INSTALL_DATA} ${WRKSRC}/AAAREADME.first \
			${PREFIX}/share/doc/amavisd-new
	${INSTALL_DATA} ${WRKSRC}/INSTALL ${PREFIX}/share/doc/amavisd-new
	${INSTALL_DATA} ${WRKSRC}/LDAP.schema ${PREFIX}/share/doc/amavisd-new
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/amavisd-new
	${INSTALL_DATA} ${WRKSRC}/MANIFEST ${PREFIX}/share/doc/amavisd-new
	${INSTALL_DATA} ${WRKSRC}/README_FILES/README.* \
			${PREFIX}/share/doc/amavisd-new
	${INSTALL_DATA} ${WRKSRC}/RELEASE_NOTES ${PREFIX}/share/doc/amavisd-new
	${INSTALL_DATA} ${WRKSRC}/amavisd.conf \
			${PREFIX}/share/doc/amavisd-new/amavisd.conf

.include <bsd.port.mk>
