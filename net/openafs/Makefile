# $OpenBSD: Makefile,v 1.52 2014/07/16 14:42:49 naddy Exp $

ONLY_FOR_ARCHS=		i386

COMMENT=		OpenAFS distributed filesystem

VERSION=		1.4.7
DISTNAME=		openafs-${VERSION}
REVISION=		26

CATEGORIES=		net

HOMEPAGE=		http://www.openafs.org

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# IBM Public License 1.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

SHARED_LIBS=	afssetpag 1.0

MASTER_SITES=		http://www.openafs.org/dl/openafs/${VERSION}/

EXTRACT_SUFX=		-src.tar.bz2

NO_TEST=		Yes

AUTOCONF_VERSION=	2.60
CONFIGURE_STYLE=	automake autoconf

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

pre-build:
	@perl -pi -e s,dprintf,debugprintf, ${WRKSRC}/src/bucoord/*.[ch]
	@perl -pi -e s,dprintf,debugprintf, ${WRKSRC}/src/config/*.h
	@perl -pi -e s,dprintf,debugprintf, ${WRKSRC}/src/sgistuff/*.c

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openafs
	${SUBST_CMD} -o ${BINOWN} -g ${BINGRP} -c ${FILESDIR}/krb5.conf \
		${PREFIX}/share/examples/openafs/krb5.conf
	${SUBST_CMD} -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} -c \
		${FILESDIR}/openafs-setup ${PREFIX}/sbin/openafs-setup

.if ${FLAVOR:Mdebug}
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
