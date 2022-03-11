COMMENT=	packing and unpacking of shell archives

DISTNAME=	sharutils-4.15.2
REVISION=	4

CATEGORIES=	archivers

HOMEPAGE=	https://www.gnu.org/software/sharutils/

MASTER_SITES=	${MASTER_SITE_GNU:=sharutils/}

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl

LIB_DEPENDS=	devel/gettext,-runtime

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --program-prefix="g" \
		 --disable-uucode

# Regression tests pass without --disable-uuencode
NO_TEST=Yes

# Fix up forward declarations from headers to fix build with "-fno-common"
# as each respective .c file has the declares and defines it in one place.
pre-patch:
	sed -i '/program_name;/s/^/extern /' ${WRKSRC}/src/*.h

.include <bsd.port.mk>
