COMMENT=	decode MS-TNEF MIME attachments

GH_ACCOUNT=	verdammelt
GH_PROJECT=	tnef
GH_TAGNAME=	1.5.0

CATEGORIES=	mail

# GPLv2+
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c intl

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	devel/gettext,-runtime

CONFIGURE_STYLE=  autoreconf
AUTOCONF_VERSION= 2.73
AUTOMAKE_VERSION= 1.18

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
