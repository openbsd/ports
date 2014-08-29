# $OpenBSD: Makefile,v 1.52 2014/08/29 13:24:29 chrisz Exp $

COMMENT=	GNU make

DISTNAME=	make-4.0
PKGNAME=	g${DISTNAME}
REVISION=	0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=make/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	https://www.gnu.org/software/make/

MODULES=	devel/gettext

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --program-prefix="g" --without-guile
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/config

.include <bsd.port.mk>
