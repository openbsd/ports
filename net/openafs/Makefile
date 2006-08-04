# $OpenBSD: Makefile,v 1.10 2006/08/04 16:34:43 naddy Exp $

ONLY_FOR_ARCHS= 	i386

COMMENT=		"Distributed filesystem OpenAFS"

DISTNAME=		openafs-1.4.0-src
PKGNAME=		openafs-1.4.0p4
CATEGORIES=		net

HOMEPAGE=		http://www.openafs.org

MAINTAINER=		Jaime Fournier <ober@linbsd.org>

# IPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c pthread

MASTER_SITES=		http://www.openafs.org/dl/openafs/1.4.0/
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.13
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-namei-fileserver \
			--enable-largefile-fileserver \
			--enable-supergroups \
			--with-afs-sysname=${ARCH}_obsd${OSrev} 

WRKDIST=		${WRKDIR}/${DISTNAME:S/-src$//}

post-patch:
	@cp ${FILESDIR}/param.i386_obsd40.h ${WRKSRC}/src/config/

pre-configure:
	@if [ ! -d /usr/src/sys ]; then \
		echo ""; \
		echo "*** Error: Building this package requires the"; \
		echo "*** kernel sources to be available under /usr/src/sys"; \
		echo ""; \
		exit 1; \
	fi

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/
.for file in openafs-setup
	@sed s,%LOCALBASE%,${LOCALBASE},g < ${FILESDIR}/${file} > \
	${PREFIX}/sbin/${file}
	@chmod u+x ${PREFIX}/sbin/${file}
.endfor
 
.include <bsd.port.mk>
