# $OpenBSD: Makefile,v 1.1.1.1 2016/09/08 13:03:36 jca Exp $

COMMENT=		easily hackable Common LISP window manager

VERSION=		0.9.9
DISTNAME=		stumpwm-${VERSION}

CATEGORIES=		x11

HOMEPAGE=		https://stumpwm.github.io/

MAINTAINER=		Solene Rapenne <solene@perso.pw>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m util

MASTER_SITES=		https://github.com/stumpwm/stumpwm/archive/
MASTER_SITES0=		https://github.com/edicl/cl-ppcre/archive/
MASTER_SITES1=		http://beta.quicklisp.org/archive/clx/2016-08-25/

DISTFILES=		${DISTNAME}{${VERSION}}${EXTRACT_SUFX} \
			cl-ppcre-2.0.11{v2.0.11}.tar.gz:0 \
			clx-20160825-git.tgz:1

BUILD_DEPENDS=		lang/sbcl

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf no-autoheader

DESTDIRNAME=		destdir
NO_TEST=		yes
PORTHOME=		${WRKBUILD}

.include <bsd.port.mk>
