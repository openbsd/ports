# $OpenBSD: Makefile,v 1.4 2006/07/09 23:14:26 espie Exp $

COMMENT=	"automatically configure source code on many Un*x platforms"

DISTNAME=	autoconf-2.58
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=autoconf/}
PKGNAME=	${DISTNAME}p1

HOMEPAGE=	http://www.gnu.org/software/autoconf/
MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS=		:help2man-*:devel/help2man

SUFFIX=			-2.58
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--program-suffix=${SUFFIX} \
			--without-lispdir
CONFIGURE_ENV+=		M4="/usr/bin/m4"
CONFIGURE_ENV+=		AWK="${AWK}"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
MAKE_FLAGS=		pkgdatadir=${PREFIX}/share/autoconf${SUFFIX}
FAKE_FLAGS=		${MAKE_FLAGS} DESTDIR=${WRKINST} lispdir=
#USE_GMAKE=		Yes
SUBST_VARS=		SUFFIX

NO_REGRESS=		Yes

.include <bsd.port.mk>
