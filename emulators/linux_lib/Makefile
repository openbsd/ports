# $OpenBSD: Makefile,v 1.17 2000/02/12 08:02:17 turan Exp $
# $NetBSD: Makefile,v 1.10 1998/04/24 09:07:55 agc Exp $
# $FreeBSD Id: Makefile,v 1.19 1997/12/04 17:34:28 asami Exp $

DISTNAME=	linux_lib-2.6.1
CATEGORIES=	emulators
MASTER_SITES=	${MASTER_SITE_LOCAL}

ONLY_FOR_ARCHS=	i386
NO_CDROM=	"GPL: must distribute with source"

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

PREFIX=		/emul/linux
NO_MTREE=	yes
NO_BUILD=	yes
NO_PATCH=	yes
NO_CONFIGURE=	yes
NO_PACKAGE=	yes
EXTRACT_ONLY=

pre-install:
	@[ -d ${PREFIX} ] || mkdir -p ${PREFIX}

do-install:
	@zcat ${DISTDIR}/${DISTNAME}.tar.gz | (cd ${PREFIX}; pax -r)

post-install:
# Creating usr/local/lib to prevent linux ldconfig from scanning OpenBSD
# local libraries...
	@mkdir -p ${PREFIX}/usr/local/lib
	${PREFIX}/sbin/ldconfig || /usr/bin/true
	-@rmdir ${PREFIX}/usr/local/lib ${PREFIX}/usr/local
	mkdir -p ${PREFIX}/usr/lib/zoneinfo
	ln -sf /etc/localtime ${PREFIX}/usr/lib/zoneinfo/localtime
	mkdir -p ${PREFIX}/dev
	ln -sf /dev/console ${PREFIX}/dev/tty0
	ln -sf /dev/ttyC0 ${PREFIX}/dev/tty1
	ln -sf /dev/ttyC1 ${PREFIX}/dev/tty2
	ln -sf /dev/ttyC2 ${PREFIX}/dev/tty3
	ln -sf /dev/ttyC3 ${PREFIX}/dev/tty4
	ln -sf /dev/sound ${PREFIX}/dev/dsp
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
