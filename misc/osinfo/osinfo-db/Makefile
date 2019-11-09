# $OpenBSD: Makefile,v 1.26 2019/11/09 11:52:51 ajacoutot Exp $

COMMENT=		osinfo database files

V=			20191108
DISTNAME=		osinfo-db-${V}
EXTRACT_SUFX=		.tar.xz

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

USE_GMAKE=		No

BUILD_DEPENDS=		misc/osinfo/osinfo-db-tools

CONFIGURE_STYLE=	# empty

do-install:
	osinfo-db-import --root ${WRKINST} --dir ${TRUEPREFIX}/share/osinfo \
		${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
