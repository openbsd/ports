# $OpenBSD: Makefile,v 1.6 2010/11/15 19:45:56 espie Exp $

COMMENT=	automatically configure source code on many Un*x platforms

VERSION=	2.13
DISTNAME=	autoconf-${VERSION}
REVISION=	2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=autoconf/}

HOMEPAGE=	http://www.gnu.org/software/autoconf/

SUFFIX=-${VERSION}
MAINTAINER=	Marc Espie <espie@openbsd.org>

CONFIGURE_ARGS+=	--program-suffix=${SUFFIX}
# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=		devel/metaauto

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu dest
CONFIGURE_ENV=	M4=/usr/bin/m4

MAKE_FLAGS=acdatadir=${PREFIX}/share/autoconf${SUFFIX}
FAKE_FLAGS=acdatadir=${WRKINST}${PREFIX}/share/autoconf${SUFFIX}
SUBST_VARS=SUFFIX

post-install:
	cd ${PREFIX}/info && mv autoconf.info autoconf${SUFFIX}.info && rm standards.info

REGRESS_DEPENDS=devel/dejagnu

.include <bsd.port.mk>
