# $OpenBSD: Makefile,v 1.2 2013/03/11 11:41:28 espie Exp $

COMMENT =	fetch ssh AuthorizedKeys from LDAP

DISTNAME =	openssh-5.3p1-81.el6.src.rpm
PKGNAME =	ssh-ldap-helper-5.3
CATEGORIES =	security net
EXTRACT_SUFX=

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	http://ftp.redhat.com/pub/redhat/linux/enterprise/6Server/en/os/SRPMS/

do-extract:
	cd ${WRKDIR} && \
		${LOCALBASE}/bin/rpm2cpio ${FULLDISTDIR}/${DISTNAME} | cpio -id
	cd ${WRKDIR} && \
		${TAR} xjf openssh-5.3p1-noacss.tar.bz2

PATCH_LIST =	${WRKDIR}/openssh-5.3p1-ldap.patch patch-*
PATCH_STRIP =	-p1
WRKDIST =	${WRKDIR}/openssh-5.3p1

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.62
CONFIGURE_ARGS =	--with-ldap=${LOCALBASE} \
			--without-pam
NO_TEST =	Yes
ALL_TARGET =	ssh-ldap-helper

BUILD_DEPENDS=	rpm-*|rpm2cpio-*:converters/rpm2cpio \
		archivers/bzip2
LIB_DEPENDS =	databases/openldap
WANTLIB +=	c crypto lber ldap util z

post-configure:
	${SUBST_CMD} ${WRKSRC}/ssh-ldap-{helper.8,wrapper}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ssh-ldap-helper ${PREFIX}/libexec/
	$(INSTALL_SCRIPT) ${WRKSRC}/ssh-ldap-wrapper ${PREFIX}/libexec/
	${INSTALL_MAN} ${WRKSRC}/ssh-ldap-helper.8 ${PREFIX}/man/man8/
	${INSTALL_MAN} ${WRKSRC}/ssh-ldap.conf.5 ${PREFIX}/man/man5/
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/ssh-ldap-helper/
	${INSTALL_DATA} ${WRKSRC}/ldap.conf ${PREFIX}/share/examples/ssh-ldap-helper/
	${INSTALL_DATA} ${WRKSRC}/HOWTO.ldap-keys ${PREFIX}/share/doc/ssh-ldap-helper/
	${INSTALL_DATA} ${WRKSRC}/openssh-lpk-openldap.schema ${PREFIX}/share/doc/ssh-ldap-helper/

.include <bsd.port.mk>
