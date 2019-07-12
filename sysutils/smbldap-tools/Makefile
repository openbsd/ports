# $OpenBSD: Makefile,v 1.12 2019/07/12 20:49:52 sthen Exp $

COMMENT=	tools for managing samba ldap

DISTNAME=	smbldap-tools-0.9.2a
REVISION =	3
CATEGORIES=	sysutils
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://gna.org/projects/smbldap-tools/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=smbldap-tools/}

RUN_DEPENDS=	converters/p5-Unicode-MapUTF8 \
		databases/p5-ldap \
		security/p5-Crypt-SmbHash

WRKDIST=	${WRKDIR}/${DISTNAME:S/2a/2/}
NO_BUILD=	Yes
NO_TEST=	Yes

PKG_ARCH=	*

SITE_PERL=	${PREFIX}/libdata/perl5/site_perl
HTML=		contents_motif.gif index.html next_motif.gif \
		previous_motif.gif smbldap-tools.html smbldap-tools001.html \
		smbldap-tools002.html smbldap-tools003.html \
		smbldap-tools004.html smbldap-tools005.html \
		smbldap-tools006.html smbldap-tools007.html \
		smbldap-tools008.html smbldap-tools009.html \
		smbldap-tools010.html
TOOLS=		groupadd groupdel groupmod groupshow useradd userdel usermod \
		usershow passwd populate
MIGRATION=	pwdump-accounts pwdump-groups unix-accounts unix-groups

pre-configure:
	@for f in configure.pl smb.conf smbldap.conf smbldap_tools.pm; do \
		perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g' ${WRKSRC}/$$f; \
		perl -pi -e 's|%%SYSCONFDIR%%|${SYSCONFDIR}|g' ${WRKSRC}/$$f; \
	done
	perl -pi -e 's|^# ..Source: .*$$||' ${WRKSRC}/configure.pl
	perl -pi -e 's|^# ..Id: .*$$||' ${WRKSRC}/configure.pl

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smbldap-tools/

	${INSTALL_DATA} ${WRKSRC}/doc/smbldap-tools.pdf \
		${PREFIX}/share/doc/smbldap-tools/

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smbldap-tools/html/

	@for f in ${HTML}; do \
		${INSTALL_DATA} ${WRKSRC}/doc/html/$$f \
		     ${PREFIX}/share/doc/smbldap-tools/html/ ; \
	done

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/smbldap-tools/

	@for f in smb.conf smbldap.conf smbldap_bind.conf; do \
		${INSTALL_DATA} ${WRKSRC}/$$f \
		    ${PREFIX}/share/examples/smbldap-tools/; \
	done

	${INSTALL_DATA} ${WRKSRC}/smbldap_tools.pm ${SITE_PERL}

	${INSTALL_SCRIPT} ${WRKSRC}/configure.pl \
		${PREFIX}/sbin/smbldap-configure

	@for f in ${TOOLS}; do \
		${INSTALL_SCRIPT} ${WRKSRC}/smbldap-$$f ${PREFIX}/sbin; \
	done

	@for f in ${MIGRATION}; do \
		${INSTALL_SCRIPT} ${WRKSRC}/doc/smbldap-migrate-$$f \
	     	     ${PREFIX}/sbin; \
	done

.include <bsd.port.mk>
