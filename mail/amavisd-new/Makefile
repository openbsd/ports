# $OpenBSD: Makefile,v 1.7 2008/09/23 21:39:21 kili Exp $

COMMENT=		interface between mailer MTA and content checkers

DISTNAME=		amavisd-new-2.6.1
CATEGORIES=		mail security

HOMEPAGE=		http://www.ijs.si/software/amavisd/
MAINTAINER=		Giovanni Bechis <g.bechis@snb.it>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE} \
			http://mirrors.catpipe.net/amavisd-new/ \
			http://mirror.mainloop.se/amavisd/ \
			http://mirror.cedratnet.com/amavisd-new/ \
			http://mirror.omroep.nl/amavisd-new/

RUN_DEPENDS=		::archivers/arc \
			::archivers/bzip2 \
			::archivers/cabextract \
			::archivers/freeze \
			::archivers/lha \
			::archivers/lzop \
			::archivers/p5-Archive-Tar \
			:p5-Archive-Zip->=1.14:archivers/p5-Archive-Zip \
			::archivers/p5-Compress-Zlib \
			::archivers/ripole \
			::archivers/unarj \
			::archivers/unrar \
			::archivers/unzip \
			::archivers/zoo \
			::converters/p5-Convert-TNEF \
			::converters/rpm2cpio \
			:p5-Convert-UUlib->=1.05:converters/p5-Convert-UUlib \
			::databases/p5-BerkeleyDB \
			::devel/p5-Net-Server \
			::mail/p5-Mail-SpamAssassin \
			:p5-Mail-DKIM->=0.31:mail/p5-Mail-DKIM \
			::mail/p5-MIME-tools \
			::sysutils/p5-Unix-Syslog

NO_BUILD=		Yes
NO_REGRESS=		Yes

PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/amavisd ${PREFIX}/sbin/amavisd
	${INSTALL_SCRIPT} ${WRKSRC}/amavisd-agent \
			${PREFIX}/bin/amavisd-agent
	${INSTALL_SCRIPT} ${WRKSRC}/amavisd-nanny \
			${PREFIX}/bin/amavisd-nanny
	${INSTALL_SCRIPT} ${WRKSRC}/amavisd-release \
			${PREFIX}/bin/amavisd-release
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
