# $OpenBSD: Makefile,v 1.9 2018/11/02 12:07:17 ajacoutot Exp $

COMMENT=		osinfo database files

V=			20181101
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
