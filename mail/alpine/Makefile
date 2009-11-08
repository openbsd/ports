# $OpenBSD: Makefile,v 1.11 2009/11/08 08:22:53 ajacoutot Exp $

COMMENT-main=	UW e-mail client
COMMENT-pico=	UW text editor
COMMENT-pilot=	UW file system navigator

V=		2.00
DISTNAME=	alpine-${V}

PICO_V=		5.04 # grep "PICO version" ${WRKSRC}/pico/pico.h
PILOT_V=	2.99 # grep PILOT_VERSION ${WRKSRC}/pico/pilot.c

CATEGORIES=	mail news
CATEGORIES-pico=editors
CATEGORIES-pilot=sysutils

PKGNAME-main=	alpine-${V}p0
PKGNAME-pico=	pico-${PICO_V}p1
PKGNAME-pilot=	pilot-${PILOT_V}p3

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=	http://www.washington.edu/alpine/

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.cac.washington.edu/alpine/

WANTLIB=	c ncurses pthread
WANTLIB-main=	${WANTLIB} asn1 com_err crypto des gssapi kafs krb5 ssl

MULTI_PACKAGES=	-main -pico -pilot

MODULES=	devel/gettext
BUILD_DEPENDS=	:c-client->=2007b:mail/imap-uw,-c-client \
		:aspell-*:textproc/aspell/core
RUN_DEPENDS=	:aspell-*:textproc/aspell/core

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		alpine_with_local_maildir="/var/mail"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-system-pinerc=${SYSCONFDIR}/pine.conf \
		--with-system-fixed-pinerc=${SYSCONFDIR}/pine.conf.fixed \
		--with-system-mail-directory=/var/mail \
		--with-ssl-certs-dir=/etc/ssl \
		--with-supplied-regex=no \
		--without-tcl \
		--enable-quotas

FLAVORS=	ldap
FLAVOR?=

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+=--with-ldap-dir=${LOCALBASE}
LIB_DEPENDS+=	lber.>=9,ldap.>=9::databases/openldap,-main
WANTLIB+=	sasl2
WANTLIB-pico=	${WANTLIB} asn1 com_err crypto gssapi krb5 ssl
WANTLIB-pilot=	${WANTLIB} asn1 com_err crypto gssapi krb5 ssl
.else
CONFIGURE_ARGS+=--without-ldap
.endif

pre-configure:
	@cd ${WRKSRC} && ln -sf ${LOCALBASE}/include/c-client c-client
	@cd ${WRKSRC}/imap/src && rm -rf c-client \
		&& ln -sf ${LOCALBASE}/include/c-client c-client
	${SUBST_CMD} ${WRKSRC}/alpine/Makefile.in \
		${WRKSRC}/pico/Makefile.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/alpine
	${INSTALL_DATA} ${WRKSRC}/doc/tech-notes.txt \
		${WRKSRC}/doc/mailcap.unx \
		${WRKSRC}/doc/mime.types \
		${PREFIX}/share/doc/alpine

.include <bsd.port.mk>
