# $OpenBSD: Makefile,v 1.2 2002/05/13 10:54:45 fgsch Exp $

COMMENT=	"automatically configure source code on many Un*x platforms"

DISTNAME=	autoconf-2.52
CATEGORIES=	devel
NEED_VERSION=	1.528
MASTER_SITES=	${MASTER_SITE_GNU:=autoconf/}

HOMEPAGE=	http://www.gnu.org/software/autoconf/

SUFFIX=-new
MAINTAINER=	Marc Espie <espie@openbsd.org>

CONFIGURE_ARGS+=	--program-suffix=${SUFFIX}
# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	M4=/usr/bin/m4
MAKE_FLAGS=pkgdatadir=${PREFIX}/share/autoconf${SUFFIX}
FAKE_FLAGS=${MAKE_FLAGS} DESTDIR=${WRKINST}
SUBST_VARS=SUFFIX

post-install:
	cd ${PREFIX}/info && mv autoconf.info autoconf${SUFFIX}.info && rm standards.info


.include <bsd.port.mk>
