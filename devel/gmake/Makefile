# $OpenBSD: Makefile,v 1.49 2013/03/11 10:50:04 espie Exp $

COMMENT=	GNU make

DISTNAME=	make-3.82
PKGNAME=	g${DISTNAME}
REVISION=	2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=make/}

HOMEPAGE=	http://www.gnu.org/software/make/

MODULES=	devel/gettext

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --program-prefix="g"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/config

.include <bsd.port.mk>
