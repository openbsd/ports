COMMENT=	perform basic numeric, textual and statistical operations

DISTNAME=	datamash-1.8
REVISION=	0

CATEGORIES=	math

HOMEPAGE=	https://www.gnu.org/software/datamash/
SITES=		${SITE_GNU:=datamash/}

# GPLv3
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB=	c m iconv intl
LIB_DEPENDS=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-bash-completion-dir=${PREFIX}/share/bash-completion/completions/

.include <bsd.port.mk>
