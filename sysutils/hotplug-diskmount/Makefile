# $OpenBSD: Makefile,v 1.13 2019/07/12 20:49:43 sthen Exp $

COMMENT =	disk auto-mounter

DISTNAME =	hotplug-diskmount-1.0.2
REVISION =	0

CATEGORIES =	sysutils

MAINTAINER =	Alexey Vatchenko <av@bsdua.org>

HOMEPAGE =	http://www.bsdua.org/hotplug-diskmount.html

MASTER_SITES =	http://www.bsdua.org/files/

# Public domain
PERMIT_PACKAGE =	Yes

WANTLIB =	c

RUN_DEPENDS =	sysutils/ntfs-3g

pre-build:
	${SUBST_CMD} ${WRKSRC}/hotplug-diskmount.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hotplug-diskmount ${PREFIX}/libexec/
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
		-c ${WRKSRC}/hotplug-diskmount.8 \
			${PREFIX}/man/man8/hotplug-diskmount.8

.include <bsd.port.mk>
