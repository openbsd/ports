# $OpenBSD: Makefile,v 1.3 2006/10/31 20:41:40 pvalchev Exp $

COMMENT=		"interface between mailer MTA and content checkers"

VERSION=		2.3.2
PKGNAME=		${DISTNAME}p0
DISTNAME=		amavisd-new-${VERSION}
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
			:p5-Archive-Zip->=1.14:archivers/p5-Archive-Zip \
			::archivers/p5-Compress-Zlib \
			::archivers/unarj \
			::archivers/unrar \
			::archivers/unzip \
			::archivers/zoo \
			::converters/p5-Convert-TNEF \
			:p5-Convert-UUlib->=1.05:converters/p5-Convert-UUlib \
			::devel/p5-Net-Server \
			::mail/p5-Mail-SpamAssassin \
			::mail/p5-MIME-tools \
			::sysutils/p5-Unix-Syslog

WRKDIST=		${WRKDIR}/amavisd-new-${VERSION}

NO_BUILD=		Yes
NO_REGRESS=		Yes

PKG_ARCH=		*

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/amavisd-new
	${INSTALL_DATA} ${WRKSRC}/amavisd.conf \
			${PREFIX}/share/examples/amavisd-new/amavisd.conf
	${INSTALL_DATA} ${WRKSRC}/amavisd.conf-default \
			${PREFIX}/share/examples/amavisd-new/amavisd.conf-default
	${INSTALL_DATA} ${WRKSRC}/amavisd.conf-sample \
			${PREFIX}/share/examples/amavisd-new/amavisd.conf-sample

.include <bsd.port.mk>
