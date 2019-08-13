# $OpenBSD: Makefile,v 1.50 2019/08/13 08:12:57 giovanni Exp $

COMMENT-main=		interface between mailer MTA and content checkers
COMMENT-utils=		utilities to monitor amavisd-new server

V=			2.12.0
DISTNAME=		amavis-v${V}
PKGNAME-main=		amavisd-new-${V}
PKGNAME-utils=		amavisd-new-utils-${V}
CATEGORIES=		mail security

HOMEPAGE=		http://www.amavis.org/
MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

# BSD / GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://gitlab.com/amavis/amavis/-/archive/v${V}/

EXTRACT_SUFX=		.tar.bz2

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
			net/net-snmp \
			net/p5-IO-Socket-INET6 \
			net/p5-Net-LibIDN \
			security/clamav \
			sysutils/p5-Unix-Syslog

RUN_DEPENDS-utils=	devel/p5-ZMQ \
			devel/p5-ZMQ-LibZMQ3 \
			mail/amavisd-new

NO_BUILD=		Yes
NO_TEST=		Yes

PKG_ARCH=		*

MULTI_PACKAGES=		-main -utils

pre-configure:
	${SUBST_CMD} ${WRKSRC}/amavis-mc
	@perl -pi -e 's,/var/amavis,/${VARBASE}/amavisd,g' ${WRKSRC}/amavisd-*
	@perl -pi -e "s,= 'vscan',= '_vscan',g" ${WRKSRC}/amavisd-signer \
		${WRKSRC}/amavisd.conf ${WRKSRC}/amavisd.conf-default

do-install:
	cd ${WRKSRC}; ${INSTALL_SCRIPT} amavisd amavis-mc amavis-services \
		${PREFIX}/sbin/
	cd ${WRKSRC}; ${INSTALL_SCRIPT} amavisd-agent amavisd-nanny \
		amavisd-release amavisd-signer amavisd-snmp-subagent \
		amavisd-submit amavisd-status amavisd-snmp-subagent-zmq \
		p0f-analyzer.pl ${PREFIX}/bin/
	${INSTALL_DATA} ${WRKSRC}/JpegTester.pm \
			${PREFIX}/libdata/perl5/site_perl/JpegTester.pm
	${INSTALL_DATA} ${WRKSRC}/TinyRedis.pm \
			${PREFIX}/libdata/perl5/site_perl/TinyRedis.pm
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
