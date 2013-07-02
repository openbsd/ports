# $OpenBSD: Makefile,v 1.32 2013/07/02 09:35:57 giovanni Exp $

COMMENT=		interface between mailer MTA and content checkers

DISTNAME=		amavisd-new-2.8.1
CATEGORIES=		mail security

HOMEPAGE=		http://www.amavis.org/
MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
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
			converters/p5-Convert-TNEF \
			rpm2cpio-*|rpm-*:converters/rpm2cpio \
			converters/p5-Convert-UUlib>=1.05 \
			databases/p5-BerkeleyDB \
			devel/p5-Net-Server \
			devel/p5-IO-Multiplex \
			mail/p5-Mail-SpamAssassin \
			mail/p5-Mail-DKIM>=0.31 \
			mail/p5-MIME-tools \
			net/net-snmp,-perl \
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
	${INSTALL_SCRIPT} ${WRKSRC}/amavisd-agent \
			${PREFIX}/bin/amavisd-agent
	${INSTALL_SCRIPT} ${WRKSRC}/amavisd-nanny \
			${PREFIX}/bin/amavisd-nanny
	${INSTALL_SCRIPT} ${WRKSRC}/amavisd-release \
			${PREFIX}/bin/amavisd-release
	${INSTALL_SCRIPT} ${WRKSRC}/amavisd-signer \
			${PREFIX}/bin/amavisd-signer
	${INSTALL_SCRIPT} ${WRKSRC}/amavisd-snmp-subagent \
			${PREFIX}/bin/amavisd-snmp-subagent
	${INSTALL_SCRIPT} ${WRKSRC}/amavisd-submit \
			${PREFIX}/bin/amavisd-submit
	${INSTALL_SCRIPT} ${WRKSRC}/p0f-analyzer.pl \
			${PREFIX}/bin/p0f-analyzer.pl
	${INSTALL_DATA} ${WRKSRC}/JpegTester.pm \
			${PREFIX}/libdata/perl5/site_perl/JpegTester.pm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/amavisd-new
	${INSTALL_DATA} ${WRKSRC}/AAAREADME.first \
			${PREFIX}/share/doc/amavisd-new
	${INSTALL_DATA_DIR} ${PREFIX}/share/snmp/mibs
	${INSTALL_DATA} ${WRKSRC}/AMAVIS-MIB.txt ${PREFIX}/share/snmp/mibs
	${INSTALL_DATA} ${WRKSRC}/INSTALL ${PREFIX}/share/doc/amavisd-new
	${INSTALL_DATA} ${WRKSRC}/LDAP.schema ${PREFIX}/share/doc/amavisd-new
	${INSTALL_DATA} ${WRKSRC}/LDAP.ldif ${PREFIX}/share/doc/amavisd-new
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

.include <bsd.port.mk>
