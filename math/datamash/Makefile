COMMENT=	perform basic numeric, textual and statistical operations

DISTNAME=	datamash-1.8
REVISION=	1

CATEGORIES=	math

HOMEPAGE=	https://www.gnu.org/software/datamash/
SITES=		${SITE_GNU:=datamash/}

# GPLv3
PERMIT_PACKAGE=	Yes
FIX_EXTRACT_PERMISSIONS= Yes

# uses pledge()
WANTLIB=	c m iconv intl
LIB_DEPENDS=	devel/gettext,-runtime

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-bash-completion-dir=${PREFIX}/share/bash-completion/completions/

.include <bsd.port.mk>
