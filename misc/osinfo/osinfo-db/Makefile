# $OpenBSD: Makefile,v 1.20 2019/05/20 12:28:29 ajacoutot Exp $

COMMENT=		osinfo database files

V=			20190504
DISTNAME=		osinfo-db-${V}
EXTRACT_SUFX=		.tar.xz
REVISION=		0

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

USE_GMAKE=		No

BUILD_DEPENDS=		misc/osinfo/osinfo-db-tools

CONFIGURE_STYLE=	# empty

do-install:
	osinfo-db-import --root ${WRKINST} --dir ${TRUEPREFIX}/share/osinfo \
		${FULLDISTDIR}/${DISTFILES}
# From 01a48f94459cafacc97867d3026c46743026f794 Mon Sep 17 00:00:00 2001
# From: Antoine Jacoutot <ajacoutot@openbsd.org>
# Date: Sat, 11 May 2019 15:15:21 +0200
# Subject: [PATCH] openbsd: Add 6.5
	${INSTALL_DATA} ${FILESDIR}/openbsd-6.5.xml \
		${PREFIX}/share/osinfo/os/openbsd.org/

.include <bsd.port.mk>
