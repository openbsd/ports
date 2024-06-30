COMMENT=		easily hackable Common LISP window manager

VERSION=		23.11
DISTNAME=		stumpwm-${VERSION}
REVISION=		3

CATEGORIES=		x11

HOMEPAGE=		https://stumpwm.github.io/

MAINTAINER=		Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c m pthread util zstd

SITES=		https://github.com/stumpwm/stumpwm/archive/
SITES.a=	https://github.com/edicl/cl-ppcre/archive/
SITES.b=	https://beta.quicklisp.org/archive/clx/2022-07-07/
SITES.c=	https://beta.quicklisp.org/archive/alexandria/2022-07-07/

DISTFILES=	${DISTNAME}{${VERSION}}${EXTRACT_SUFX}
DISTFILES.a= 	cl-ppcre-2.1.1{v2.1.1}.tar.gz
DISTFILES.b= 	clx-20220707-git.tgz
DISTFILES.c= 	alexandria-20220707-git.tgz

BUILD_DEPENDS=		lang/sbcl \
			print/texinfo
LIB_DEPENDS=		archivers/zstd

AUTOCONF_VERSION=	2.71
CONFIGURE_STYLE=	autoconf no-autoheader
CONFIGURE_ARGS+=	--with-module-dir=${LOCALBASE}/share/stumpwm/modules \
			--enable-compression

USE_GMAKE=		yes
MAKE_ENV=		MAKEINFO=${PREFIX}/bin/gmakeinfo \
			ASDF_OUTPUT_TRANSLATIONS=/:

MAKE_FLAGS=		'-e'

DESTDIRNAME=		destdir
NO_TEST=		yes

# Use symlinks so ASDF finds system dependencies
pre-configure:
	@find ${WRKDIR} -type f -name \*.asd -a \! -name stumpwm.asd \
		-exec ln -s {} ${WRKSRC} \;

.include <bsd.port.mk>
