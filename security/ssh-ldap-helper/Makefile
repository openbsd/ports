COMMENT =	fetch ssh AuthorizedKeys from LDAP

V =		8.0p1
DISTNAME =	openssh-${V}-10
PKGNAME =	ssh-ldap-helper-8.0

CATEGORIES =	security net
EXTRACT_SUFX=	.el8.src.rpm

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB +=	c crypto lber ldap util z

MASTER_SITES =	https://dl.rockylinux.org/pub/rocky/8/BaseOS/source/tree/Packages/o/

LDAP_PATCH =	${WRKDIR}/openssh-6.7p1-ldap.patch

PATCH_LIST =	${LDAP_PATCH} patch-*
PATCH_STRIP =	-p1
WRKDIST =	${WRKDIR}/openssh-${V}

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69
CONFIGURE_ARGS =	--with-ldap=${LOCALBASE} \
			--without-pam
NO_TEST =	Yes
ALL_TARGET =	ssh-ldap-helper

LIB_DEPENDS =	databases/openldap

post-extract:
	# Fix a 64-bit time_t issue in the LDAP_PATCH
	sed -i 's/timeout to %l/&l/' ${LDAP_PATCH}
	cd ${WRKDIR} && ${TAR} xzf openssh-${V}.tar.gz

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
