# $OpenBSD: Makefile,v 1.6 2020/03/23 19:17:39 ajacoutot Exp $

COMMENT =	fetch ssh AuthorizedKeys from LDAP

DISTNAME =	openssh-5.3p1-81.el6.src.rpm
PKGNAME =	ssh-ldap-helper-5.3
REVISION =	0

CATEGORIES =	security net
EXTRACT_SUFX=

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB +=	c crypto lber-2.4 ldap-2.4 util z

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

BUILD_DEPENDS=	converters/rpm2cpio \
		archivers/bzip2
LIB_DEPENDS =	databases/openldap

# The LDAP_SET_REBIND_PROC_ARGS macro is set to literal
# "$ac_cv_ldap_set_rebind_proc" instead of "3" because of the improper
# use of AC_DEFINE instead of AC_DEFINE_UNQUOTED. This fails on arm,
# where '$' is reserved. Fixing this would lead the preprocessor tests
# to succeed, and the code to call ldap_set_rebind_proc() with bogus
# parameters, so let's just define the macro to 0.
# XXX should really be a patch
post-patch:
	sed -i 's/AC_DEFINE(LDAP_SET_REBIND_PROC_ARGS, $$ac_cv_ldap_set_rebind_proc/AC_DEFINE(LDAP_SET_REBIND_PROC_ARGS, 0/' \
	    ${WRKSRC}/configure.ac

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
