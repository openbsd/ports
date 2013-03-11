# $OpenBSD: Makefile,v 1.32 2013/03/11 10:50:04 espie Exp $

COMMENT=	GNU utility to indent C source files

DISTNAME=	indent-2.2.10
PKGNAME=	g${DISTNAME}
REVISION=	0
CATEGORIES=	devel

HOMEPAGE=	http://www.gnu.org/software/indent/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${MASTER_SITE_GNU:=indent/}

MODULES=	devel/gettext

NO_TEST=	Yes
BUILD_DEPENDS=	textproc/texi2html
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--program-prefix="g" \
		--without-included-gettext
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
MAKE_ARGS=	BERKELEY_DEFAULTS=1

FAKE_FLAGS+=	docdir=${PREFIX}/share/doc/gindent/

.include <bsd.port.mk>
