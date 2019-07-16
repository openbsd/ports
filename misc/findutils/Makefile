# $OpenBSD: Makefile,v 1.31 2019/07/16 21:29:41 sthen Exp $

COMMENT=		finds and then operates on files

DISTNAME=		findutils-4.6.0
CATEGORIES=		misc
REVISION=		1

HOMEPAGE=		https://www.gnu.org/software/findutils/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB=		c iconv intl m

MASTER_SITES=		${MASTER_SITE_GNU:=findutils/}

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--program-prefix="g"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
# only used for testsuite
CONFIGURE_ENV+=		PYTHON=:

LOCALSTATEDIR=		${BASELOCALSTATEDIR}/db

.include <bsd.port.mk>
