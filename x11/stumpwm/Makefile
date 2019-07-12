# $OpenBSD: Makefile,v 1.5 2019/07/12 20:51:22 sthen Exp $

COMMENT=		easily hackable Common LISP window manager

VERSION=		18.05
DISTNAME=		stumpwm-${VERSION}
REVISION=		0

CATEGORIES=		x11

HOMEPAGE=		https://stumpwm.github.io/

MAINTAINER=		Solene Rapenne <solene@perso.pw>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c m util z

MASTER_SITES=		https://github.com/stumpwm/stumpwm/archive/
MASTER_SITES0=		https://github.com/edicl/cl-ppcre/archive/
MASTER_SITES1=		https://beta.quicklisp.org/archive/clx/2018-04-30/
MASTER_SITES2=		https://beta.quicklisp.org/archive/alexandria/2017-08-30/
MASTER_SITES3=		https://beta.quicklisp.org/archive/clx-xembed/2012-09-09/

DISTFILES=		${DISTNAME}{${VERSION}}${EXTRACT_SUFX} \
			cl-ppcre-2.0.11{v2.0.11}.tar.gz:0 \
			clx-20180430-git.tgz:1 \
			alexandria-20170830-git.tgz:2 \
			clx-xembed-20120909-git.tgz:3

BUILD_DEPENDS=		lang/sbcl

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf no-autoheader

DESTDIRNAME=		destdir
NO_TEST=		yes
PORTHOME=		${WRKBUILD}

.include <bsd.port.mk>
