COMMENT=	implementation of IDNA2008 internationalized domain names

DISTNAME=	libidn2-2.3.0
REVISION=	0
CATEGORIES=	devel
HOMEPAGE=	https://www.gnu.org/software/libidn/\#libidn2

SHARED_LIBS=	idn2	1.1	# 3.7

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://gitlab.com/libidn/libidn2/uploads/58f148618e25cdd66171bc240b9ef1af/

WANTLIB=	c iconv unistring

LIB_DEPENDS=	converters/libunistring

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-nls \
		gl_cv_warn_c__fdiagnostics_color_always=no
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
