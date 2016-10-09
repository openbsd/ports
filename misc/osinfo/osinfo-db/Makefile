# $OpenBSD: Makefile,v 1.1.1.1 2016/10/09 15:25:10 ajacoutot Exp $

COMMENT=		osinfo database files

DISTNAME=		osinfo-db-20160728
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
