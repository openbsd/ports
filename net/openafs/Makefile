# $OpenBSD: Makefile,v 1.21 2008/10/12 00:12:07 todd Exp $

ONLY_FOR_ARCHS=		i386

COMMENT=		OpenAFS distributed filesystem

VERSION=		1.4.7
DISTNAME=		openafs-${VERSION}
PKGNAME=		${DISTNAME}p2

CATEGORIES=		net

HOMEPAGE=		http://www.openafs.org

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

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
			--localstatedir=/var \
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
	@${INSTALL_DATA_DIR} ${PREFIX}/share/openafs
.for file in README.OpenBSD
	sed -e s,%LOCALBASE%,${LOCALBASE},g \
		-e s,%SYSCONFDIR%,${SYSCONFDIR},g \
		< ${FILESDIR}/${file} > ${PREFIX}/share/openafs/${file}
.endfor
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openafs
.for file in krb5.conf
	sed -e s,%LOCALBASE%,${LOCALBASE},g \
		-e s,%SYSCONFDIR%,${SYSCONFDIR},g \
		< ${FILESDIR}/${file} > \
		${PREFIX}/share/examples/openafs/${file}
.endfor
.for file in openafs-setup
	sed -e s,%LOCALBASE%,${LOCALBASE},g \
		-e s,%SYSCONFDIR%,${SYSCONFDIR},g \
		< ${FILESDIR}/${file} > ${PREFIX}/sbin/${file}
	chmod u+x ${PREFIX}/sbin/${file}
.endfor

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=	--enable-debug
CONFIGURE_ARGS+=	--enable-debug-lwp
.endif

.if ${MACHINE} == "alpha" || \
	${MACHINE} == "amd64" || \
	${MACHINE} == "arm" || \
	${MACHINE} == "i386" || \
	${MACHINE} == "mips64" || \
	${MACHINE} == "sh" || \
	${MACHINE} == "vax"
CONFIGURE_ARGS+=	--enable-littleendian
.else
CONFIGURE_ARGS+=	--enable-bigendian
.endif

.include <bsd.port.mk>
