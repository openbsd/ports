# $OpenBSD: Makefile,v 1.36 2014/07/14 08:56:30 giovanni Exp $

COMMENT=		interface between mailer MTA and content checkers

DISTNAME=		amavisd-new-2.9.1
CATEGORIES=		mail security

HOMEPAGE=		http://www.amavis.org/
MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

# BSD / GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE} \
			http://mirrors.catpipe.net/amavisd-new/ \
			http://mirror.mainloop.se/amavisd/ \
			http://mirror.cedratnet.com/amavisd-new/ \
			http://mirror.omroep.nl/amavisd-new/

RUN_DEPENDS=		archivers/arc \
			archivers/bzip2 \
			archivers/cabextract \
			archivers/lzop \
			archivers/p5-Archive-Zip>=1.14 \
			archivers/p7zip,-rar \
			archivers/ripole \
			archivers/unzip \
			archivers/zoo \
			rpm2cpio-*|rpm-*:converters/rpm2cpio \
			databases/p5-BerkeleyDB \
			devel/p5-Net-Server \
			devel/p5-IO-Multiplex \
			mail/p5-Mail-SpamAssassin \
			mail/p5-Mail-DKIM>=0.31 \
			mail/p5-MIME-tools \
			net/net-snmp,-perl \
			net/p5-IO-Socket-INET6 \
			net/p5-IO-Socket-IP \
			security/clamav \
			sysutils/p5-Unix-Syslog

NO_BUILD=		Yes
NO_TEST=		Yes

PKG_ARCH=		*

pre-configure:
	@perl -pi -e 's,/var/amavis,/var/amavisd,g' ${WRKSRC}/amavisd-*
	@perl -pi -e "s,= 'vscan',= '_vscan',g" ${WRKSRC}/amavisd-signer \
		${WRKSRC}/amavisd.conf ${WRKSRC}/amavisd.conf-default

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/amavisd ${PREFIX}/sbin/amavisd
	cd ${WRKSRC}; ${INSTALL_SCRIPT} amavisd-agent amavisd-nanny \
		amavisd-release amavisd-signer amavisd-snmp-subagent \
		amavisd-submit p0f-analyzer.pl ${PREFIX}/bin/
	${INSTALL_DATA} ${WRKSRC}/JpegTester.pm \
			${PREFIX}/libdata/perl5/site_perl/JpegTester.pm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/amavisd-new
	cd ${WRKSRC}; ${INSTALL_DATA} AAAREADME.first INSTALL LDAP.schema \
		LDAP.ldif LICENSE MANIFEST README_FILES/README.* RELEASE_NOTES \
		${PREFIX}/share/doc/amavisd-new/
	${INSTALL_DATA_DIR} ${PREFIX}/share/snmp/mibs
	${INSTALL_DATA} ${WRKSRC}/AMAVIS-MIB.txt ${PREFIX}/share/snmp/mibs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/amavisd-new
	cd ${WRKSRC}; ${INSTALL_DATA} amavisd*.conf amavisd.conf-default \
		${PREFIX}/share/examples/amavisd-new/

.include <bsd.port.mk>
