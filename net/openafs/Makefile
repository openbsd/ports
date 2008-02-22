# $OpenBSD: Makefile,v 1.16 2008/02/22 20:56:05 naddy Exp $

ONLY_FOR_ARCHS= 	i386

COMMENT=		distributed filesystem OpenAFS

V=			1.4.0
DISTNAME=		openafs-${V}-src
PKGNAME=		openafs-${V}p8
CATEGORIES=		net

HOMEPAGE=		http://www.openafs.org

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# IPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c pthread

MASTER_SITES=		http://www.openafs.org/dl/openafs/${V}/
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.13
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-namei-fileserver \
			--enable-largefile-fileserver \
			--enable-supergroups \
			--with-afs-sysname=${ARCH}_obsd${OSrev} \
			--disable-kernel-module

WRKDIST=		${WRKDIR}/${DISTNAME:S/-src$//}

post-patch:
	@sed 's/%OSrev%/'${OSrev}'/g' ${FILESDIR}/param.i386_obsd.h \
		> ${WRKSRC}/src/config/param.${ARCH}_obsd${OSrev}.h

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/
.for file in openafs-setup
	@sed -e s,%PREFIX%,${PREFIX},g -e s,%SYSCONFDIR%,${SYSCONFDIR},g \
		< ${FILESDIR}/${file} > ${PREFIX}/sbin/${file}
	@chmod u+x ${PREFIX}/sbin/${file}
.endfor
 
.include <bsd.port.mk>
