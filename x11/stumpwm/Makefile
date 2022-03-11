COMMENT=		easily hackable Common LISP window manager

VERSION=		20.11
DISTNAME=		stumpwm-${VERSION}

CATEGORIES=		x11

HOMEPAGE=		https://stumpwm.github.io/

MAINTAINER=		Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c m util z

MASTER_SITES=		https://github.com/stumpwm/stumpwm/archive/
MASTER_SITES0=		https://github.com/edicl/cl-ppcre/archive/
MASTER_SITES1=		https://beta.quicklisp.org/archive/clx/2019-08-13/
MASTER_SITES2=		https://beta.quicklisp.org/archive/alexandria/2019-07-10/

DISTFILES=		${DISTNAME}{${VERSION}}${EXTRACT_SUFX} \
			cl-ppcre-2.1.1{v2.1.1}.tar.gz:0 \
			clx-20190813-git.tgz:1 \
			alexandria-20190710-git.tgz:2

BUILD_DEPENDS=		lang/sbcl,threads \
			print/texinfo

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf no-autoheader

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
