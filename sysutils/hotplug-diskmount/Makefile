# $OpenBSD: Makefile,v 1.6 2013/03/22 13:20:36 benoit Exp $

COMMENT =	disk auto-mounter

DISTNAME =	hotplug-diskmount-0.8

CATEGORIES =	sysutils

MAINTAINER =	Alexey Vatchenko <av@bsdua.org>

HOMEPAGE =	http://www.bsdua.org/hotplug-diskmount.html

MASTER_SITES =	http://www.bsdua.org/files/

# Public domain
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hotplug-diskmount ${PREFIX}/libexec/
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
		-c ${WRKSRC}/hotplug-diskmount.8 \
			${PREFIX}/man/man8/hotplug-diskmount.8

.include <bsd.port.mk>
