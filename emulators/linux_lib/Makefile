# $OpenBSD: Makefile,v 1.23 2000/10/01 03:18:00 brad Exp $
# $NetBSD: Makefile,v 1.10 1998/04/24 09:07:55 agc Exp $
# $FreeBSD Id: Makefile,v 1.19 1997/12/04 17:34:28 asami Exp $

ONLY_FOR_ARCHS=	i386

DISTNAME=	linux_lib-2.6.1
CATEGORIES=	emulators
NEED_VERSION=	1.330
MASTER_SITES=	${MASTER_SITE_LOCAL}
EXTRACT_ONLY=

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes

PREFIX=		/usr/local/emul/linux

pre-install:
	install -d -o root -g wheel -m 755 ${PREFIX}
	install -d -o root -g wheel -m 755 ${WRKINST}/emul
	@ln -sf ${TRUEPREFIX} ${WRKINST}/emul/linux

do-install:
	@zcat ${DISTDIR}/${DISTNAME}.tar.gz | (cd ${PREFIX}; pax -r)

post-install:
# Creating usr/local/lib to prevent linux ldconfig from scanning OpenBSD
# local libraries...
	install -d -o root -g wheel -m 755 ${PREFIX}/usr/local/lib
	-chroot ${WRKINST} ${TRUEPREFIX}/sbin/ldconfig
	-@rmdir ${PREFIX}/usr/local/lib ${PREFIX}/usr/local
	install -d -o root -g wheel -m 755 ${PREFIX}/usr/lib/zoneinfo
	@ln -sf /etc/localtime ${PREFIX}/usr/lib/zoneinfo/localtime

.include <bsd.port.mk>
