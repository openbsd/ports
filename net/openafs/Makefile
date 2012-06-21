# $OpenBSD: Makefile,v 1.42 2012/06/21 13:54:14 sthen Exp $

ONLY_FOR_ARCHS=		i386

COMMENT=		OpenAFS distributed filesystem

VERSION=		1.4.7
DISTNAME=		openafs-${VERSION}
REVISION=		20

CATEGORIES=		net

HOMEPAGE=		http://www.openafs.org

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# IBM Public License 1.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

SHARED_LIBS=	afssetpag 1.0

MASTER_SITES=		http://www.openafs.org/dl/openafs/${VERSION}/

EXTRACT_SUFX=		-src.tar.bz2

NO_REGRESS=		Yes

AUTOCONF_VERSION=	2.60
CONFIGURE_STYLE=	automake autoconf

CONFIGURE_ENV+=		KRB5CFLAGS="-I/usr/include/kerberosV -DUSING_HEIMDAL" \
			KRB5LIBS="-lkrb5"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-transarc-paths \
			--enable-namei-fileserver \
			--enable-largefile-fileserver \
			--with-afs-sysname=${ARCH}_obsd${OSrev} \
			--enable-fast-restart \
			--disable-kernel-module \
			--enable-supergroups

FLAVORS=	debug
FLAVOR?=

post-patch:
	@sed 's/%OSrev%/'${OSrev}'/g;s/i386/'${ARCH}'/g' \
		${FILESDIR}/param.i386_obsd.h \
		> ${WRKSRC}/src/config/param.${ARCH}_obsd${OSrev}.h

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openafs
	${SUBST_CMD} -c ${FILESDIR}/krb5.conf \
		${PREFIX}/share/examples/openafs/krb5.conf
	${SUBST_CMD} -c ${FILESDIR}/openafs-setup \
		${PREFIX}/sbin/openafs-setup
	chown ${BINOWN}:${BINGRP} \
		${PREFIX}/share/examples/openafs/krb5.conf \
		${PREFIX}/sbin/openafs-setup
	chmod u+x ${PREFIX}/sbin/openafs-setup

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=	--enable-debug
CONFIGURE_ARGS+=	--enable-debug-lwp
.endif

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mle}
CONFIGURE_ARGS+=	--enable-littleendian
.else
CONFIGURE_ARGS+=	--enable-bigendian
.endif

.include <bsd.port.mk>
