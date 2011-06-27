# $OpenBSD: Makefile,v 1.1.1.1 2011/06/27 10:06:56 dcoppa Exp $

COMMENT =	disk auto-mounter

DISTNAME =	hotplug-diskmount-0.5

CATEGORIES =	sysutils

MAINTAINER =	Alexey Vatchenko <av@bsdua.org>

HOMEPAGE =	http://www.bsdua.org/hotplug-diskmount.html

MASTER_SITES =	http://www.bsdua.org/files/

# Public domain
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hotplug-diskmount ${PREFIX}/libexec/
	${INSTALL_MAN} ${WRKSRC}/hotplug-diskmount.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
