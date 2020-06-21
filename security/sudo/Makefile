# $OpenBSD: Makefile,v 1.40 2020/06/21 12:38:52 sthen Exp $

COMMENT-main=	execute a command as another user
COMMENT-python=	sudo Python plugin

V=		1.9.1
REVISION-main=	0
DISTNAME=	sudo-${V}
CATEGORIES=	security

PKGNAME-main=	sudo-${V}
PKGNAME-python=	sudo-python-${V}

MAINTAINER=	Todd C. Miller <millert@openbsd.org>

# ISC-style license
PERMIT_PACKAGE=	Yes

HOMEPAGE=	https://www.sudo.ws/

MASTER_SITES=	https://www.sudo.ws/dist/ \
		https://bigsearcher.com/mirrors/sudo/ \
		https://mirrors.concertpass.com/sudo/ \
		ftp://ftp.uwsg.indiana.edu/pub/security/sudo/

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-insults \
			--with-env-editor \
			--with-logfac=authpriv \
			--with-libtool=system \
			--disable-path-info \
			--enable-openssl \
			--enable-zlib=system

SHARED_LIBS=	sudo_util	0.0

PSEUDO_FLAVORS=	no_python
FLAVORS=	gettext ldap
FLAVOR?=

MULTI_PACKAGES=		-main -python
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP=		No

# All sub-packages depend on these libraries
WANTLIB=		util crypto

# The gettext flavor influences LIB_DEPENDS and WANTLIB for all sub-packages
.if ${FLAVOR:Mgettext}
CONFIGURE_ARGS +=	--enable-nls=${LOCALBASE}
LIB_DEPENDS+=		devel/gettext,-runtime
WANTLIB+=		iconv intl
.else
CONFIGURE_ARGS+=	--disable-nls
.endif

# It is now safe to set sub-package WANTLIB and LIB_DEPENDS
WANTLIB-main=		${WANTLIB} c z ssl
WANTLIB-python=		${WANTLIB} libexec/sudo/sudo_util \
			${MODPY_WANTLIB} iconv intl m pthread

LIB_DEPENDS-main=	${LIB_DEPENDS}
LIB_DEPENDS-python=	${LIB_DEPENDS} security/sudo,-main ${MODPY_LIB_DEPENDS}

.if ${FLAVOR:Mldap}
CONFIGURE_ARGS+=	--with-ldap=${LOCALBASE}
LIB_DEPENDS-main+=	databases/openldap
WANTLIB-main+=		lber ldap sasl2
.endif

.include <bsd.port.arch.mk>
.if !${BUILD_PACKAGES:M-python}
CONFIGURE_ARGS+=	--disable-python
.else
CONFIGURE_ARGS+=	--enable-python
MODULES=		lang/python
.endif

# Don't set owner on install in fake mode
FAKE_FLAGS=	"INSTALL_OWNER="

EXAMPLEDIR=	${PREFIX}/share/examples/sudo

post-install:
	${INSTALL_DATA} ${FILESDIR}/sudoers ${EXAMPLEDIR}/sudoers.OpenBSD
	rm -rf ${WRKINST}/etc/sudoers* ${WRKINST}/var/db/sudo \
	       ${WRKINST}/var/run/sudo ${EXAMPLEDIR}/pam.conf

.include <bsd.port.mk>
