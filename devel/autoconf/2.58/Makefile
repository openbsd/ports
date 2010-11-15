# $OpenBSD: Makefile,v 1.10 2010/11/15 19:45:56 espie Exp $

COMMENT=	automatically configure source code on many Un*x platforms

DISTNAME=	autoconf-2.58
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=autoconf/}
REVISION =	3

HOMEPAGE=	http://www.gnu.org/software/autoconf/
MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS=		devel/help2man
RUN_DEPENDS=		devel/metaauto

SUFFIX=			-2.58
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--program-suffix=${SUFFIX} \
			--without-lispdir
CONFIGURE_ENV+=		M4="/usr/bin/m4"
CONFIGURE_ENV+=		AWK="${AWK}"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
MAKE_FLAGS=		pkgdatadir=${PREFIX}/share/autoconf${SUFFIX}
FAKE_FLAGS=		lispdir=
#USE_GMAKE=		Yes
SUBST_VARS=		SUFFIX

USE_GROFF =		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
