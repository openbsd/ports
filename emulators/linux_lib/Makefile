# $OpenBSD: Makefile,v 1.20 2000/04/10 17:32:33 espie Exp $
# $NetBSD: Makefile,v 1.10 1998/04/24 09:07:55 agc Exp $
# $FreeBSD Id: Makefile,v 1.19 1997/12/04 17:34:28 asami Exp $

DISTNAME=	linux_lib-2.6.1
CATEGORIES=	emulators
MASTER_SITES=	${MASTER_SITE_LOCAL}

ONLY_FOR_ARCHS=	i386
NO_CDROM=	"GPL: must distribute with source"

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PREFIX=		/usr/local/emul/linux
NO_BUILD=	Yes
NO_PATCH=	Yes
NO_CONFIGURE=	Yes
EXTRACT_ONLY=
FAKE=		Yes

pre-install:
	@mkdir -p ${PREFIX}
	@mkdir ${WRKINST}/emul
	@ln -s ${TRUEPREFIX} ${WRKINST}/emul/linux

do-install:
	@zcat ${DISTDIR}/${DISTNAME}.tar.gz | (cd ${PREFIX}; pax -r)

post-install:
# Creating usr/local/lib to prevent linux ldconfig from scanning OpenBSD
# local libraries...
	@mkdir -p ${PREFIX}/usr/local/lib
	-chroot ${WRKINST} ${TRUEPREFIX}/sbin/ldconfig
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

.include <bsd.port.mk>
