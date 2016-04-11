# $OpenBSD: Makefile,v 1.28 2016/04/11 22:10:06 naddy Exp $

COMMENT=		finds and then operates on files

DISTNAME=		findutils-4.6.0
CATEGORIES=		misc

HOMEPAGE=		https://www.gnu.org/software/findutils/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c iconv intl m

MASTER_SITES=		${MASTER_SITE_GNU:=findutils/}

LIB_DEPENDS=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--program-prefix="g"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
# only used for testsuite
CONFIGURE_ENV+=		PYTHON=:

LOCALSTATEDIR=		${BASELOCALSTATEDIR}/db

.include <bsd.port.mk>
